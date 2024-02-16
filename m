Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id BE102857257
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 01:16:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6113582319;
	Fri, 16 Feb 2024 00:15:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G9DV5fhrmqkr; Fri, 16 Feb 2024 00:15:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BCF6582311
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708042558;
	bh=JqAy6DlroIJ9l7o/NbDSLbIGKoCKSO71Lmwdp7enbQw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=16RZbaSpy+XKEjROfkPXRIRhAwr6QGLdXqSyItxl0t3vw+Ie8xE4it/Uc8I0MGyoX
	 X1K/pTqFcfFxpbjU6ElpvUv30BT4ai6DObNsijzADQa7njqUNYl36O3xnne0SXCUdW
	 TZ9u7NVeO5CPV40R2n3WLI0PASG1vpqH0EoEChaGBV7PFrtAeQJ2EZIJD1i57Cmm+y
	 vvfQ8gv0mc6RPVtn9p82NDkvreTCCai6R8tPgiKB2Z2uL99/x+ZOpo7DyZGoT4HAhH
	 IU0usSlS4IqYfurXOsDVXHn0WJamdeBP0fOwvru2d4/SJoB9J2CTL4ezOoiXT+SSKc
	 DGhZA89AYsBvg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BCF6582311;
	Fri, 16 Feb 2024 00:15:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EABC11BF36D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 00:15:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D6CE460B50
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 00:15:56 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GkkVG8eoijTB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 00:15:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 383BC606D0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 383BC606D0
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 383BC606D0
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 00:15:55 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1raltO-007vtb-Dh; Fri, 16 Feb 2024 01:15:50 +0100
Date: Fri, 16 Feb 2024 01:15:50 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Paul Menzel <pmenzel@molgen.mpg.de>
Message-ID: <c92f69a6-7024-4463-84d4-2be519291abf@lunn.ch>
References: <20240214-keee-u32-cleanup-v2-0-4ac534b83d66@lunn.ch>
 <fc1be95d-b34b-4153-ba0b-f124180a33ec@molgen.mpg.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <fc1be95d-b34b-4153-ba0b-f124180a33ec@molgen.mpg.de>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=JqAy6DlroIJ9l7o/NbDSLbIGKoCKSO71Lmwdp7enbQw=; b=BpABSFK0gL4HaxZXBUyhj8IzPh
 HakVCCG+QWxbe+yuxYNkCOiBxekYPzzXHpMt7MVZ31oMQ+tc8lTBBTlcthm6E7TtEEiMPdmUxzuY8
 tcxnBn6qsAgyz0xFcudTRDXX6MmSROvw6/VmWMEzyawnkp34rpwG70JHtgIUPg1Mqwzw=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=lunn.ch header.i=@lunn.ch
 header.a=rsa-sha256 header.s=20171124 header.b=BpABSFK0
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 0/8] drivers: net: Convert
 EEE handling to use linkmode bitmaps
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: Ariel Elior <aelior@marvell.com>, Manish Chopra <manishc@marvell.com>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 intel-wired-lan@lists.osuosl.org, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Am 15.02.24 um 12:13 AM schrieb Andrew Lunn:
> > EEE has until recently been limited to lower speeds due to the use of
> > the legacy u32 for link speeds. This restriction has been lifted, with
> > the use of linkmode bitmaps. This patchset convert some MAC drivers
> 
> Maybe reference the commit introducing them?

That would be:

1f069de63602 ethtool: add linkmode bitmap support to struct ethtool_keee
1d756ff13da6 ethtool: add suffix _u32 to legacy bitmap members of struct ethtool_keee
285cc15cc555 ethtool: adjust struct ethtool_keee to kernel needs
0b3100bc8fa7 ethtool: switch back from ethtool_keee to ethtool_eee for ioctl
d80a52335374 ethtool: replace struct ethtool_eee with a new struct ethtool_keee on kernel side
 
> One small nit: convert*s*

Thanks.

	Andrew
