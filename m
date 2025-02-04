Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 57E39A2730D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Feb 2025 14:41:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BF0A780C7B;
	Tue,  4 Feb 2025 13:41:56 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nIGhbcAMMjuV; Tue,  4 Feb 2025 13:41:56 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 34254804DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1738676516;
	bh=Yy6poegxu45rnXHOUFtUu6Vu72DWeMa6JipGCBJcIok=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ZasG2QFJm5w2n+SOGlAIkdWvrGAT3ZwBFK4vmO4CQqzntqjS+duC5dDa12o+s+1oF
	 endMq2sVKJW0I5wSDW/N2L0dvWiytD+mRacx6RLeNZrIYvgAxwU31s4OUUtRUj3jEa
	 c9kD0I/ytowhg0SkhuBQX2oYJPT49GDFb/ItiBLLrS6xWSCPsMH9ITNnS3UFGlz37W
	 mkiysNDNIra8q7KF26qHYS+NN4PKnEd8RJeqLDdtJHjUiMRT/anwY1SY25XoPVxe+g
	 MbU7BnjfNdxV2n64XPkONTTZVPK8eNDx4qk+EKV5+Txm/8S3AxBgUqOzGtmQ1gillf
	 qzXzu2qnqlVSQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 34254804DB;
	Tue,  4 Feb 2025 13:41:56 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id BAC2B12F
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:41:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A026C412C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:41:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0V5YQ1ndsqxB for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Feb 2025 13:41:53 +0000 (UTC)
X-Greylist: delayed 1957 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 04 Feb 2025 13:41:52 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 69D0D412C4
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 69D0D412C4
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 69D0D412C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Feb 2025 13:41:52 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1tfIfu-00Ar61-Cf; Tue, 04 Feb 2025 14:09:10 +0100
Date: Tue, 4 Feb 2025 14:09:10 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org, pmenzel@molgen.mpg.de,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <0a921f6c-a63d-4255-ba0e-ea7f83b8b497@lunn.ch>
References: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250204071700.8028-1-jedrzej.jagielski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=Yy6poegxu45rnXHOUFtUu6Vu72DWeMa6JipGCBJcIok=; b=MVlhPuFia3zE9pkS3H4S+lNjYF
 ThPbu8xHOIeyeNCCSh6vMdDYXWfd1y0aQLii+1sWhl9Ld5MU3Lj1G945wNJjeyMqDgA/geE8F8rvf
 B67+IxArOk6sf4L5vW6845c6d9w416JLCezE0H1mizb7m1K5pUcVZgmJrPZZcossFuRU=;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=MVlhPuFi
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: add support for
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

On Tue, Feb 04, 2025 at 08:17:00AM +0100, Jedrzej Jagielski wrote:
> E610 NICs unlike the previous devices utilising ixgbe driver
> are notified in the case of overheatning by the FW ACI event.
> 
> In event of overheat when treshold is exceeded, FW suspends all
> traffic and sends overtemp event to the driver. Then driver
> logs appropriate message and closes the adapter instance.
> The card remains in that state until the platform is rebooted.

There is also an HWMON temp[1-*]_emergency_alarm you can set. I
_think_ that should also cause a udev event, so user space knows the
print^h^h^h^h^hnetwork is on fire.

	Andrew
