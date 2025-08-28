Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D532B3A875
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Aug 2025 19:42:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id BA1F083BDB;
	Thu, 28 Aug 2025 17:42:01 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9BoMo3NT7MW1; Thu, 28 Aug 2025 17:42:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 467C183BD1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756402921;
	bh=OvXV0aoXbSw/DhaHwzMZIvHkpdlUIBQo0SQJA3MINc4=;
	h=Date:From:To:Cc:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=3J8Eq7tsV7Ar4FI8aQCicPdL57j9Z7KOIsUTfwb02RHuKGWPAnJI8xSL5J8PJwhVx
	 XLXuqjS9oOnukuJv4hCc6pzCUo5YdaR1hsi1QSmhHST1rm9lpilicS5hFqEM4hiJQ+
	 WKyhuBsl7YfvMYGeX/+NWCs74z+g0nEB77wbqpcGDSPVpgpgmWle75pIf72mRRulDX
	 eVGUe2HK5Zgbxw4i4Hr3HQi7lnnn/xIlo4/Ba/6+p1sFFovgqNjCAZDsEwFXx5Y3D5
	 kXCCBtmLN0hthyBoogs9psp6i6Mhji5glUMFCQupRk+rUPh4i1TZ6tM5llzb6O6n8q
	 dzXQuXnzfJf+g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 467C183BD1;
	Thu, 28 Aug 2025 17:42:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id EF879928
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:41:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id D9B5F60EF4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a6wWEstlgY3X for <intel-wired-lan@lists.osuosl.org>;
 Thu, 28 Aug 2025 17:41:57 +0000 (UTC)
X-Greylist: delayed 2088 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 28 Aug 2025 17:41:57 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 7638860F01
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7638860F01
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=156.67.10.101;
 helo=vps0.lunn.ch; envelope-from=andrew@lunn.ch; receiver=<UNKNOWN> 
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 7638860F01
 for <intel-wired-lan@lists.osuosl.org>; Thu, 28 Aug 2025 17:41:57 +0000 (UTC)
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
 (envelope-from <andrew@lunn.ch>)
 id 1urg5H-006NEb-Je; Thu, 28 Aug 2025 19:06:47 +0200
Date: Thu, 28 Aug 2025 19:06:47 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Cc: anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 andrew+netdev@lunn.ch, davem@davemloft.net, edumazet@google.com,
 kuba@kernel.org, pabeni@redhat.com, horms@kernel.org,
 sdf@fomichev.me, almasrymina@google.com, asml.silence@gmail.com,
 leitao@debian.org, kuniyu@google.com, jiri@resnulli.us,
 aleksandr.loktionov@intel.com, ivecera@redhat.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 netdev@vger.kernel.org
Message-ID: <013d723e-ac62-4207-ae66-31126f890429@lunn.ch>
References: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250828164345.116097-1-arkadiusz.kubalewski@intel.com>
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt;
 c=relaxed/relaxed; d=lunn.ch; 
 s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
 Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
 Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
 bh=OvXV0aoXbSw/DhaHwzMZIvHkpdlUIBQo0SQJA3MINc4=; b=d7GPMDyacaIs77+63ehM2z0Eu2
 tUYhUDUf95yDD+w92h1ikQDjtG2N6NfGaOO0RvOSroTindthnKxeJ8QcdQhnOVKmjuNCgU9us7JLG
 TRS0nhNE1gTXFP3sPsqYYu4UB6/KTsz94CnsHHauTtUGa29ENlO5V4tkziBSCXSSdxxQ=;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=lunn.ch
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=lunn.ch header.i=@lunn.ch header.a=rsa-sha256
 header.s=20171124 header.b=d7GPMDya
Subject: Re: [Intel-wired-lan] [RFC PATCH v2] net: add net-device TX clock
 source selection framework
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

> - use netlink instead of sysfs

ethtool is netlink. Why is this not part of the ethtool API?

	Andrew
