Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2C66E2959
	for <lists+intel-wired-lan@lfdr.de>; Fri, 14 Apr 2023 19:29:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5A5096FFD0;
	Fri, 14 Apr 2023 17:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5A5096FFD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681493353;
	bh=lssKhnmTT5/xszfQVrQTJ2kzFzWXNbdWc/HddbRE+J8=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=iL94DhrChJxRiRIXIjptsEyiAq6Nmx1zos1749zlO4JGnYNSbjZNYNWHcCcneZDN+
	 cl9NwYlwXtkWfpJtE1bcPXJyBPl2/z9Y6YVsUYLappLZaCWwl/v0AVbRLoh8N+whHi
	 tL78JfJSrPjU5ljWzok91pCJLYtj5/v8WN3AzsfgrGDhMm4FRdB5sn6VsJcknO5Jw2
	 nWVLtccw+fxwbhU+yLk5iOf02uiJKv9A7O7JI9RcOypUJAuXETWXphqRH0rhOvwF0h
	 +uJ5Ma+UyBF4ZxiJZkq+DbASaKtHx7CR2nWpmUeC+HwtwgqhjjJ3CTJzndnvWa3LqT
	 imZn6FvlX6KhQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Eam4W2QeO_7A; Fri, 14 Apr 2023 17:29:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4CE186FF36;
	Fri, 14 Apr 2023 17:29:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CE186FF36
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id EC8421C3F64
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C2E7860B0F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2E7860B0F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uZYkYOf88yD5 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 14 Apr 2023 17:29:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 094DB6FFCB
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 094DB6FFCB
 for <intel-wired-lan@lists.osuosl.org>; Fri, 14 Apr 2023 17:29:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="372388212"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="372388212"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Apr 2023 10:29:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10680"; a="720357544"
X-IronPort-AV: E=Sophos;i="5.99,197,1677571200"; d="scan'208";a="720357544"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 14 Apr 2023 10:29:00 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 14 Apr 2023 10:29:00 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 14 Apr 2023 10:29:00 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 14 Apr 2023 10:28:59 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bI0iH5LEMa4i1OjvEvUGPfxANp95O/TwoCR/UenNGXv6WTV7TvX6kjkJ3HAmfLNeAO2ERBr5x6kGSPWgAXaokX8BbI51i1n79ExDlYBCswhciAn0vumMv8EM0TUlGZ5gCljkalyjlI85eNB0zRncoXd93KpMz+HUCikWy/McxuEQGHUMtHAHoPzezMKlA1KXvXX0Lvqbw+dW/kvbZC2C9hbMnK4Aj6Nhb7QDRBsdh8uMMdp/bTT+WAUX00xtuFbcGrD/4ny7SBoF+OUyom69OfJI7rEPecT5iXxfrHOUZywR2ntuPk5xBvKfE242QnmJOurMl379Cfu3GP05+X3u2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qZuTnqZMOvXWjusuiOorqPGkyQGDFmvXn3AsMBqo31E=;
 b=Ft4N6N5QKSrCe9UDBpReQe4PKo8gY6rj8wI4Lojl552wcOF1VBphJ4Yag+T1G4r/CAsJ/AOGtEI4BFhByq+y3qrNLH9IvJ3PFEKyLsM9p9x7gcHHc9XWUl1i91XTxGO3wlQvTEC2rhe4V1LcL++l9/M8ZUaP3aM9beM/M27Pa3q+E5ZAgBg12NKbvr4ixocNddipx87+ZcUz4QxKfMFReKKG4OS6dspKlUOhj5Ft1vVEOhix0VmmbiH2Q+Ifs9ec2dN+SqgQ/l9Sk3YRw0boyfGVNoICF30yW3FOEqRuARUOJJ+XsGB/Vs15zbOPWSy7LOrPrOz26CsI48jd1i86KA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB4657.namprd11.prod.outlook.com (2603:10b6:5:2a6::7) by
 DM4PR11MB6454.namprd11.prod.outlook.com (2603:10b6:8:b8::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6156.28; Fri, 14 Apr 2023 17:28:57 +0000
Received: from DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8]) by DM6PR11MB4657.namprd11.prod.outlook.com
 ([fe80::f829:c44d:af33:e2c8%4]) with mapi id 15.20.6298.030; Fri, 14 Apr 2023
 17:28:57 +0000
From: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v2 2/6] ice: increase the GNSS data polling
 interval to 20 ms
Thread-Index: AQHZbResqGZKsQBYCEW4elfha+rO7a8q3rCQ
Date: Fri, 14 Apr 2023 17:28:56 +0000
Message-ID: <DM6PR11MB465739C23C3C0D83E7ADA19E9B999@DM6PR11MB4657.namprd11.prod.outlook.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-3-mschmidt@redhat.com>
In-Reply-To: <20230412081929.173220-3-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB4657:EE_|DM4PR11MB6454:EE_
x-ms-office365-filtering-correlation-id: 25d1bae5-2ff4-4620-de6d-08db3d0dba26
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB4657.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(396003)(39860400002)(376002)(366004)(346002)(136003)(451199021)(38070700005)(7696005)(71200400001)(41300700001)(55016003)(86362001)(8936002)(26005)(2906002)(186003)(52536014)(33656002)(6506007)(5660300002)(76116006)(478600001)(66946007)(66446008)(64756008)(66556008)(4326008)(8676002)(9686003)(66476007)(110136005)(54906003)(82960400001)(38100700002)(122000001)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB4657.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 25d1bae5-2ff4-4620-de6d-08db3d0dba26
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Apr 2023 17:28:56.9513 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DA9YZ7lTVTDM9XTa92Q02A+Pn7lOZeXFxXxpdUvlZggx03uLW1m/aJdi6z+WwtxnEpu5tgOKvBbB4ML2RmbW5p0dABAZXYc+rRWXyv58LeU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6454
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1681493346; x=1713029346;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=6C7sAhgPeeJLNoluD6x2WjMCQ1o9pu2IdZTRA8BPkUY=;
 b=NmicCcaahxrx4wKNvD0mp3XV6e8Jm6ohuPyCh/wjvV1Qx4ujTteOKlqb
 D28kKJ38SdAXd4FLfQ6G+3L67MzS5b+E3mxHClSxKj++nP4AmaxuW++6V
 Nvs8YY1ayCB1h3HH84LPscClVWW8X/A3H5qjXqrF284KGO+ihyAin8Ns9
 yvrY9B8f1CV1eBuUvRF0RneB6a7X7HBbZgXyQ0RYalzXjABI3P6WrquaU
 5FgbnC4u9RcX7t3IFkxmSoFXR74rMRKqJK2tHCH19OhU/t6f1uo7Ie3Ca
 hkdz9iseoQ4Fzq8+hv745Oe1CZSr6WtXQEBt/CBFwrwr73MZiSVWJQkev
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=NmicCcaa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 2/6] ice: increase the
 GNSS data polling interval to 20 ms
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Kolacinski,
 Karol" <karol.kolacinski@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 Simon Horman <simon.horman@corigine.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Michal Schmidt <mschmidt@redhat.com>
>Sent: Wednesday, April 12, 2023 10:19 AM
>
>Double the GNSS data polling interval from 10 ms to 20 ms.
>According to Karol Kolacinski from the Intel team, they have been
>planning to make this change.
>
>Signed-off-by: Michal Schmidt <mschmidt@redhat.com>
>---
> drivers/net/ethernet/intel/ice/ice_gnss.h | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_gnss.h
>b/drivers/net/ethernet/intel/ice/ice_gnss.h
>index 640df7411373..b8bb8b63d081 100644
>--- a/drivers/net/ethernet/intel/ice/ice_gnss.h
>+++ b/drivers/net/ethernet/intel/ice/ice_gnss.h
>@@ -5,7 +5,7 @@
> #define _ICE_GNSS_H_
>
> #define ICE_E810T_GNSS_I2C_BUS		0x2
>-#define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 100) /* poll every 10 ms */
>+#define ICE_GNSS_POLL_DATA_DELAY_TIME	(HZ / 50) /* poll every 20 ms */
> #define ICE_GNSS_TIMER_DELAY_TIME	(HZ / 10) /* 0.1 second per message */
> #define ICE_GNSS_TTY_WRITE_BUF		250
> #define ICE_MAX_I2C_DATA_SIZE
>	FIELD_MAX(ICE_AQC_I2C_DATA_SIZE_M)
>--
>2.39.2

Looks good, thank you Michal!

Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
