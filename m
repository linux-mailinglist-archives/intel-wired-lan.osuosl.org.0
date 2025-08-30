Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DAF9B3CF40
	for <lists+intel-wired-lan@lfdr.de>; Sat, 30 Aug 2025 22:16:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6EEBF40395;
	Sat, 30 Aug 2025 20:16:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BoiU9DBGYqhq; Sat, 30 Aug 2025 20:16:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DE0E340391
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1756584969;
	bh=8Afy9xvrfmePMFwDjUWP+2SP1X18TaC8FvGhXgpVdCU=;
	h=From:To:CC:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0fXj3mKuZ882oBZL+hLG/CmizSh5Oxf/lJoqTfS4THlM0FJA5cepAaKeY5P3cgZwH
	 RMNi5Z8DwF1iXIdWyL9PQBGbMgauSAaRRYii3edcYRL4lSjaA93f6sfJoyHPKIyYJt
	 ypTw83615G0IKm0Hk9BuqFqDok0TvTmm/IcCLLezC4RFF1yC5b0OjabrIqJBMI4ANn
	 UP432lKkxIiWtHFghEnaCye9iEMbfoAuJhVaqp8fDiFbZU5ErZE1vseDSGxPDyfph8
	 Ob+pbxoTZ8o2IYOz8ZU7X6vWAo5Qub/uYp36OuLADv4QIi/Sw+PwLvs+oQxn8hLlqh
	 Mn8JafUwolNUA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE0E340391;
	Sat, 30 Aug 2025 20:16:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 4DCEDD2
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 20:16:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3F67540270
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 20:16:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yxfwxzMGazyz for <intel-wired-lan@lists.osuosl.org>;
 Sat, 30 Aug 2025 20:16:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=35.162.73.231;
 helo=pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com;
 envelope-from=prvs=3304d371e=enjuk@amazon.co.jp; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3728240263
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3728240263
Received: from pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 (pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com
 [35.162.73.231])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3728240263
 for <intel-wired-lan@lists.osuosl.org>; Sat, 30 Aug 2025 20:16:01 +0000 (UTC)
X-CSE-ConnectionGUID: nV4y56/qRhuExNPqGRSvGA==
X-CSE-MsgGUID: EfWgYBh4TjqDXay2cXPgUQ==
X-IronPort-AV: E=Sophos;i="6.18,225,1751241600"; 
   d="scan'208";a="1987828"
Received: from ip-10-5-9-48.us-west-2.compute.internal (HELO
 smtpout.naws.us-west-2.prod.farcaster.email.amazon.dev) ([10.5.9.48])
 by internal-pdx-out-012.esa.us-west-2.outbound.mail-perimeter.amazon.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Aug 2025 20:15:59 +0000
Received: from EX19MTAUWA002.ant.amazon.com [10.0.21.151:57912]
 by smtpin.naws.us-west-2.prod.farcaster.email.amazon.dev [10.0.51.7:2525] with
 esmtp (Farcaster)
 id f7940bc6-4159-43ef-b4e1-28c436aa528d; Sat, 30 Aug 2025 20:15:59 +0000 (UTC)
X-Farcaster-Flow-ID: f7940bc6-4159-43ef-b4e1-28c436aa528d
Received: from EX19D001UWA001.ant.amazon.com (10.13.138.214) by
 EX19MTAUWA002.ant.amazon.com (10.250.64.202) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.17;
 Sat, 30 Aug 2025 20:15:59 +0000
Received: from b0be8375a521.amazon.com (10.37.245.8) by
 EX19D001UWA001.ant.amazon.com (10.13.138.214) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA) id 15.2.2562.20;
 Sat, 30 Aug 2025 20:15:57 +0000
From: Kohei Enju <enjuk@amazon.com>
To: <andrew@lunn.ch>
CC: <andrew+netdev@lunn.ch>, <anthony.l.nguyen@intel.com>,
 <davem@davemloft.net>, <edumazet@google.com>, <enjuk@amazon.com>,
 <intel-wired-lan@lists.osuosl.org>, <kohei.enju@gmail.com>,
 <kuba@kernel.org>, <netdev@vger.kernel.org>, <pabeni@redhat.com>,
 <przemyslaw.kitszel@intel.com>, <vitaly.lifshits@intel.com>
Date: Sun, 31 Aug 2025 05:14:41 +0900
Message-ID: <20250830201549.16083-1-enjuk@amazon.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <7607d394-9659-4bb0-af14-8a3633cfc89c@lunn.ch>
References: <7607d394-9659-4bb0-af14-8a3633cfc89c@lunn.ch>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Originating-IP: [10.37.245.8]
X-ClientProxiedBy: EX19D036UWC002.ant.amazon.com (10.13.139.242) To
 EX19D001UWA001.ant.amazon.com (10.13.138.214)
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazoncorp2;
 t=1756584962; x=1788120962;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8Afy9xvrfmePMFwDjUWP+2SP1X18TaC8FvGhXgpVdCU=;
 b=RjQZDu2a0PRjbDcVvqmM8klDYGSYS9JglBV95LRMEk8L6jtYTOEZFluk
 Yd6YzNoKDUfsT3pkA2vUu4fBBFwGmCAg6lX1Eru3B36ihFbTIpFaogReD
 7ZniKO2hSTioz+rohYuz/uGUXysMIN7s7olV+lo7Zs1q2L4fQBscaUDvU
 FCHugMTAH+tpXQ00PWWd516lgZNsGf4oLWbs6TvPCzt66s38j2VE/MrmN
 xk8m3Hw3aa2oZZcEB05E7YY9diwMVcj/OhnRLkMLUiERk2O3+3qQ/rJ13
 XbB0DLFYFm/TYDnj7dj0noFkWTgZZAeG8Psc0HR5Ru8l/MQgIX1vUbX5m
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amazon.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=amazon.com header.i=@amazon.com header.a=rsa-sha256
 header.s=amazoncorp2 header.b=RjQZDu2a
Subject: Re: [Intel-wired-lan] [PATCH v1 iwl-net] igc: power up PHY before
 link test
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

On Sat, 30 Aug 2025 21:27:33 +0200, Andrew Lunn wrote:

>On Sun, Aug 31, 2025 at 02:06:19AM +0900, Kohei Enju wrote:
>> The current implementation of igc driver doesn't power up PHY before
>> link test in igc_ethtool_diag_test(), causing the link test to always
>> report FAIL when admin state is down and PHY is consequently powered
>> down.
>> 
>> To test the link state regardless of admin state, let's power up PHY in
>> case of PHY down before link test.
>
>Maybe you should power the PHY down again after the test?

You're right about the concern, but it's already handled by the existing 
code flow:
    /* power up PHY for link test */
	igc_power_up_phy_copper(&adapter->hw);

    /* doing link test */

    if (if_running)
        igc_close(netdev);
    else
        igc_reset(adapter);
        
    /* other tests */
    igc_reset(adapter);

igc_reset() calls igc_power_down_phy_copper_base() when !netif_running(), 
so the PHY is properly powered down again.

>
>Alternatively, just return -ENOTDOWN is the network is admin down.

That would be simpler indeed. Since the callback returns void, we'd set 
the test result to indicate skip/fail.
However, I think checking actual physical connectivity even when admin 
down is valuable, which other Intel ethernet drivers (e.g., i40e, ixgbe, 
igb) also do.

>
>	Andrew
