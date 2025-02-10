Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 007AAA2EE60
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Feb 2025 14:37:37 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5BFDF404AC;
	Mon, 10 Feb 2025 13:37:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9z5pVEq60yQs; Mon, 10 Feb 2025 13:37:35 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93BDE4047E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1739194655;
	bh=wIs1hoS+WXkB+Bc/qpt2291isC/SnfHWfi8qzKuV7dY=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JHoxNpnnZ51Da7peXjIz8fLA7Jljd7JX6rUU0+Hk0oh7bl2Ed41Wefsw+xibTmFb+
	 j1RPjV0SBqPq8VMMdRMsuMdK5bU2NVPM7kKoCepBFqi6Pn91yjuL76+v1A0hUm0jG6
	 +rLuM6AXwPop6ruuBol5hUgda2k6VmwPMAEhd6mrR3eLEXtzm1sbfm3SILNSbx3vk0
	 QwHr5QGl5E6RkjNfUf8v/3t/7QfOvIyhppF5LhaM1FQpDHRE0JFGS0BeWSxocTOKWx
	 kP/xZiZMDI5OJY9FvhtmF/DURRwoD0d8hOQ/6B4Mp8g/aoL4ash1I61EyMpwPN/glE
	 zX0rVloFygl0Q==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 93BDE4047E;
	Mon, 10 Feb 2025 13:37:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 734B66C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 13:37:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5505640649
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 13:37:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fTpnYaop35XZ for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Feb 2025 13:37:32 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 15DC540BC6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 15DC540BC6
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 15DC540BC6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Feb 2025 13:37:32 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1thTyb-00CirB-73; Mon, 10 Feb 2025 14:37:29 +0100
Date: Mon, 10 Feb 2025 14:37:29 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Cc: Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 intel-wired-lan@lists.osuosl.org,
 Anthony L Nguyen <anthony.l.nguyen@intel.com>,
 netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Przemyslaw Kitszel <przemyslaw.kitszel@intel.com>,
 Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Message-ID: <7085302f-af69-484a-8558-2aa823379fbe@lunn.ch>
References: <20250210104017.62838-1-jedrzej.jagielski@intel.com>
 <87644679-1f6c-45f4-b9fd-eff1a5117b7b@molgen.mpg.de>
 <DS0PR11MB77854D8F8DEEE0A44BB0E17EF0F22@DS0PR11MB7785.namprd11.prod.outlook.com>
 <442420d6-3911-4956-95f1-c9b278d45cd6@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <442420d6-3911-4956-95f1-c9b278d45cd6@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
 Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
 Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
 In-Reply-To:References; bh=wIs1hoS+WXkB+Bc/qpt2291isC/SnfHWfi8qzKuV7dY=; b=Mo
 EXM9F0CeJ9nkoo3tF0MRJmZdQwJAvMEBjaqJYUtpqZvLVaNAyElp26l7fde0JCDbh/6QiUkWLkChy
 gO+p1pU4iaxP1XS3KJl+Xed0MxuYQSBZchjf0jOvf8FBnzCCZGPrrbYVxrDRm3JP6urr9wU5qlm8G
 ToGXSl5YNT/fOu8=;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=MoEXM9F0
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v3] ixgbe: add support for
 thermal sensor event reception
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> > > > Then driver
> > > > logs appropriate message and closes the adapter instance.
> > > > The card remains in that state until the platform is rebooted.
> > > 
> > > As a user I’d be interested what the threshold is, and what the measured
> > > temperature is. Currently, the log seems to be just generic?
> > 
> > These details are FW internals.
> > Driver just gets info that such event has happened.
> > There's no additional information.
> > 
> > In that case driver's job is just to inform user that such scenario
> > has happened and tell what should be the next steps.
> 
> From a user perspective that is a suboptimal behavior, and shows another
> time that the Linux kernel should have all the control, and stuff like this
> should be moved *out* of the firmware and not into the firmware.

The older generations of hardware driven by this driver actually have
HWMON support for the temperature sensor. I can understand the
hardware protecting itself, and shutting down, but i agree with you,
all the infrastructure already exists to report the temperature so why
drop it? That actually seems like more work, and makes the device less
friendly.

	Andrew
