Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F5B4961A4
	for <lists+intel-wired-lan@lfdr.de>; Fri, 21 Jan 2022 15:58:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A4EB83E9A;
	Fri, 21 Jan 2022 14:58:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ayTSC8bBXiSh; Fri, 21 Jan 2022 14:58:14 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id E6F1883E90;
	Fri, 21 Jan 2022 14:58:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 15F851BF31D
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 14:58:09 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 0087C405E5
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 14:58:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id CUgvrEh0FWBp for <intel-wired-lan@lists.osuosl.org>;
 Fri, 21 Jan 2022 14:58:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6CAB4405D8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 21 Jan 2022 14:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642777087; x=1674313087;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=ex3VzCOgdBDotwtVEkpSglwZUQcjGAaGWVgOckoCz90=;
 b=iJA1TLqOSd5M4fYVpxCsoXNxPZRaFhvyViT/dSx17kD3igdwP19BMhKJ
 VseHW/Ei89X/zWIX32mP3ZKfl3tWnfXtB+UgIiSUmoy87T39zcxY/ulIM
 IB8uhKEE/lswwNuATZpdC9PugBqiujEscY1FkULopSLwUq4pDM4hbC4Mb
 tHsVN+dVuICFn1INMRMVuVQEnDzUprKCCrW7OrL34wFEW/pmriBc8q4Ra
 bDk51ax3iDzE4LHlOg3Ge/+SqDeVB2FleqYj89kOL5ljPkAYsXU9Id3sD
 9IPssoM51nXBv0EZO+DDqCoOohR+e6jiybSuvT5eFD+vO7/nTxPxZfOLv Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10233"; a="245887474"
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="245887474"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2022 06:58:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.88,304,1635231600"; d="scan'208";a="475965896"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 21 Jan 2022 06:58:06 -0800
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 06:58:06 -0800
Received: from fmsmsx609.amr.corp.intel.com (10.18.126.89) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20; Fri, 21 Jan 2022 06:58:05 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx609.amr.corp.intel.com (10.18.126.89) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.20 via Frontend Transport; Fri, 21 Jan 2022 06:58:05 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.20; Fri, 21 Jan 2022 06:58:04 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YHg6neo4or2sJrgIXmWbaNGCraCrm6F1Ic+TQNRg2pp1WVLH6n47FB861zRhX0n/EFf8hpGuK249oFVATWaVdPAir04ODSgMPDedh4tymgX9MZ1kTQ/QZftXpW5FYZVKjrvYv8ibi2hAX2GCHqXu4Ou1v/EoLqRpFbGeI0hpODHFDZNWDcJCFfcSHpcteR+OeQgK9IkyDCoGF6t6FfWx9R4+wSgjJ0PV3Uqu9aNCnkFXGxKHv47z0+0TXbiHJ5LiQgD8cBJat45zQWbQKqv67xONGqb1iV/GO5gijuiekahQP1bkEXRM+e+y2+FjIjJI0rS8ZKR41J/4mL+tsKOKSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=B3qhU7scp3wsXnMQK7lacUe+7K9D9nH5MAWvxX2izk8=;
 b=On2u2mlgJdUAoKWPQ3ePcSUHvqOS8lYc/9LUXOcXx5cWeqLaVNiKrb3vwXMB98oro4gH+Bqj9Rco1Y5RLHTcI0g5uZXjFPrB6Lpb6NgxScp+GpSx+CGsEtCpJrGtdsYlUhLHZHxGt7LmV/NfsG0O2mgkT0PTJGp1c3bm1iLzRlnsqWGd2gJZlTUwZpOLfJy3VIDkv0Sd+HUc+pdwGainMDJUUUay9Yl/BZDODTxmonPxi5RXFZHbqQ7VU33+mZFfQilArffunqYYTTopkGW3c/RDUhVXOhqVmZk1UwYN+Hm+Fm2VjEthU3HlubDTzhtchsUV8nWmfqDLCE1jBvo4rA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
Received: from CO1PR11MB4881.namprd11.prod.outlook.com (2603:10b6:303:91::20)
 by SJ0PR11MB4959.namprd11.prod.outlook.com (2603:10b6:a03:2de::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4909.8; Fri, 21 Jan
 2022 14:58:03 +0000
Received: from CO1PR11MB4881.namprd11.prod.outlook.com
 ([fe80::709f:e8ff:325c:2b51]) by CO1PR11MB4881.namprd11.prod.outlook.com
 ([fe80::709f:e8ff:325c:2b51%8]) with mapi id 15.20.4909.012; Fri, 21 Jan 2022
 14:58:03 +0000
From: "Sokolowski, Jan" <jan.sokolowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH net-next v2] iavf: Add reset to watchdog task
Thread-Index: AdgO1rLf9TwJ2Ra9Q0+0UlvkGJ2isg==
Date: Fri, 21 Jan 2022 14:58:03 +0000
Message-ID: <CO1PR11MB48811E81C70B27754A77D92F995B9@CO1PR11MB4881.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3e44b87a-876d-4017-6d74-08d9dcee6caa
x-ms-traffictypediagnostic: SJ0PR11MB4959:EE_
x-microsoft-antispam-prvs: <SJ0PR11MB4959BA2C6A45BFC5FD760586995B9@SJ0PR11MB4959.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 45iGBIAYH/UG9RMYYocTRnGuxSIpAP5Jw+FrpQI8UoLF6eAaKVRCJRvjgz7pTxqKKDe0rqep1V/H1FXWxSp+Lz3blivZYrslNRshy2+3FXg/qvu9vE1bmSdobO6Kx02MAsFzZrpGW1dykHJD0PGRN60VWqoHazJhrk690oHJg8WA/xxoQqkJW3kdAUYdoiM9ejwdPgsa7nac3tRNtpnnZS+xynLR3T1Leu2sO4Jm2aHPPwaduKRDS0lKFIoTwzvMPAvAmo0FSwliceJA6j0JAXLGzjgbY6PNqY8lceEKhik2bOVswgOuY7YC7pzMnWkd3QJ7/LLlXBWgi8R6Ax6GsGFeI1DxZ3Ok2ZeZjaKa6qEpRmaEK2wUMTU1I12Ppe1jsMoMzPgPYSnKPmidZw3r4BNOybHXWIT0AWU1lGpj8S1a72UXYxL10gnK8TqKJssU8LEwEKO4V05rG9mtk6ouL+vZjDmPZ3xGvbNuHFEf6sEkg7IMFOZhHYBNjlpQt0A6tig5ZWQvGRkl56fUFJ5CXlh0B3d1A413n33ZeYsK4JLRNv1kHzQGPWbsiqkxw4YjKwMwOj3kKpyYJy1N99P7IRj8rNlLzeynRfX4pStdRyOoWWNoeLzMw9w6lxNxQduzZygq0Cit4tH8gZ2toqo2L3xZbHKNKcEhk45OmdtI0yCsrjQK5MNASCTfpdsD5eBMwCc/xG7czFADe6ZRUiyRjA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB4881.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(9686003)(107886003)(2906002)(38100700002)(508600001)(52536014)(316002)(8676002)(82960400001)(122000001)(4326008)(33656002)(8936002)(86362001)(54906003)(66946007)(71200400001)(83380400001)(38070700005)(66476007)(7696005)(76116006)(66556008)(64756008)(66446008)(6636002)(6506007)(55016003)(26005)(110136005)(186003)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?y+Ej/1OeiRh6ZDozC+SzdFURXSX/ExuCdE0ISlobcOsDuvitVoE/Hx2efBKa?=
 =?us-ascii?Q?q2/2Bu8wEmRKXlwmGKAexPbACfZVMAE7fMsmfP1NiCO0V/NS/NEX6bCKuCbz?=
 =?us-ascii?Q?8sQV3FeKqATRPhm85vdefFUIzaOgJDTebIHS/QgJRSNZRwHIQSWDk2eevLDM?=
 =?us-ascii?Q?VZ9onvUnjNEqz6eyAXxUO6XSpNIg4dEr14J5WnI9T2/eibuSTFIZOvK1jH9b?=
 =?us-ascii?Q?4Gi5s5dIvDsgSNiy2Lo2AeRl0xCQ52CZ0DZfNTmc972FQBrWeZyj5ofZkC8Z?=
 =?us-ascii?Q?ONAwPAlQNBTuRFYlrv04YFC9phdOgYdLtqiCt3AL+wIp+npHRnAAknLJVliP?=
 =?us-ascii?Q?micmuAxKweGaSMA6tzH8pujth/fSujNZ7Une0j7C32J24gDL/6RFGL0YQQfx?=
 =?us-ascii?Q?qbkT5jl65i2X2IgzFcMmxlZeTfr1p5lnW0y5XcI8uSBoYSPOXrKX8jJQJiqW?=
 =?us-ascii?Q?pqFRgn4nNNr1XIvFbubbbExocp3IMSRV/b0+9q6UJMEMgfDHaAkZfSCa+2BD?=
 =?us-ascii?Q?xAcmLQLmmei4Pgl99Myv6KyPBEKVLrJDEya7eFD47jjUwKg3MuZrCEBl6dh+?=
 =?us-ascii?Q?1DSNFdTzhIfPjfHrUoZQpPzaRjHoJmviJLgRrwUBtLpDClxcmxPhVpwpZ75C?=
 =?us-ascii?Q?oomj878q+lUYuanqBBeUNDodXCYqoZdaxDHV+LduhjQ0uUfRIlhRVV8GdSXV?=
 =?us-ascii?Q?iSGNCmK42XPZQTroLZtuc5eCpZ95Aj9OyNNYDCoP33DCP/K8oxfcq+9a5mFS?=
 =?us-ascii?Q?/uNjgRgBMotHtThi7vIyNVQnHBd++zQufvQSyop464GOMBwor5dXNpe5YDL1?=
 =?us-ascii?Q?BAy9zEy9B2tzM0EaDYLjCcTqRWHajehwSZdqOpYSzmd+Ni2OevwCVgbobcqW?=
 =?us-ascii?Q?VD2CaHNzi4kHiujLoxas5QsgBqO3pWeCa9HDh0KYJb9KQltFzT74awEiMLYZ?=
 =?us-ascii?Q?UGnBxV61/smvD8OwP1RDgxuFDWoB1YrAWO6cf/UC6ojy35enXM2NFhQZJIik?=
 =?us-ascii?Q?eqFLlp32gnZ4no0ip2XU2CZO3OjAgGV7pxynEvw6RkqZkodobNo8QDzC2k1w?=
 =?us-ascii?Q?rd184vDZNv6oykPrsn+dDeNcA3vKy2WatjBNTHTfXS930OKI5RqM2kpmEbjZ?=
 =?us-ascii?Q?zZubzvp+BUU79TPjJJ4XCzR6MQVfJulv5UsZNGRoDb5Hxl9aCVdwDK30Xx3v?=
 =?us-ascii?Q?ibB6u5H4+JM5ZEL6xbknKxwz3allQE3hesQFh2M5x0n0b64WhxCAOwaE2PXA?=
 =?us-ascii?Q?LPJbojdXRXSuYoUiNZdbh2jck7mM/eBE1vln2SdzJ+FMoRZ85u/ud/RYJG5T?=
 =?us-ascii?Q?BPeJS10NDTOGyuQJQmj2HrQvAUW6Tl8+73MGVoC7LyGJYRcY+X6l/Gffn5Gq?=
 =?us-ascii?Q?ncEzI0krTkdLN1T4h1hXWZ6Nwcqi2PqNVZR3tbHH11ozZwdvktqyni9EL2Rj?=
 =?us-ascii?Q?aGNxc6QbCBxetsxecfPr2e878Pn+mHyeJ/ETWVJCE+pJh2P/oFb14n6QUPao?=
 =?us-ascii?Q?/QNodTiImEb1HdL4tyopdFqnYpqw0F3Ct3hMAwo445YY5Nu67wh0nncskt09?=
 =?us-ascii?Q?hgfwgVJlbtMsGAyzRzEz5kpFbh/z1iwjh8z35Dh+do/esydxhdeHuyhlAWJx?=
 =?us-ascii?Q?O/l9JmVzqcakODGH9LLqq/14V1YLJGROnHtdn4sB7fex2USXukZ8gAF6WSuF?=
 =?us-ascii?Q?NhAOmw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB4881.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3e44b87a-876d-4017-6d74-08d9dcee6caa
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2022 14:58:03.0884 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: FF6pgv4uxsX0Xs2TzxF5G5xHOuvnww/caGoJu7AWcAsbBKluuw5X57Pnah8B/DT2aTfPkrS7VQigJTiKV6NXuCmPS5FYB1lrmhTh7wbZPJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4959
X-OriginatorOrg: intel.com
Subject: [Intel-wired-lan] [PATCH net-next v2] iavf: Add reset to watchdog
 task
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
Cc: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>, "Pawlak,
 Jakub" <jakub.pawlak@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove the reset as separate task and implement
the reset procedure inside the watchdog state machine.
This allows to avoid additional overhead for processes
synchronization. The reset flags are still used to mark
reset progress for asynchonous invoked callback functions.

Signed-off-by: Jakub Pawlak <jakub.pawlak@intel.com>
Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf.h        |  1 -
 .../net/ethernet/intel/iavf/iavf_ethtool.c    | 12 ++--
 drivers/net/ethernet/intel/iavf/iavf_main.c   | 67 +++++++------------
 .../net/ethernet/intel/iavf/iavf_virtchnl.c   |  4 +-
 4 files changed, 30 insertions(+), 54 deletions(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf.h b/drivers/net/ethernet/intel/iavf/iavf.h
index 16cd06feed31..a746f446606f 100644
--- a/drivers/net/ethernet/intel/iavf/iavf.h
+++ b/drivers/net/ethernet/intel/iavf/iavf.h
@@ -237,7 +237,6 @@ struct iavf_cloud_filter {
 
 /* board specific private data structure */
 struct iavf_adapter {
-	struct work_struct reset_task;
 	struct work_struct adminq_task;
 	struct delayed_work client_task;
 	wait_queue_head_t down_waitqueue;
diff --git a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
index 3bb56714beb0..e55c5321ab5c 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_ethtool.c
@@ -530,10 +530,8 @@ static int iavf_set_priv_flags(struct net_device *netdev, u32 flags)
 
 	/* issue a reset to force legacy-rx change to take effect */
 	if (changed_flags & IAVF_FLAG_LEGACY_RX) {
-		if (netif_running(netdev)) {
-			adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-			queue_work(iavf_wq, &adapter->reset_task);
-		}
+		if (netif_running(netdev))
+			iavf_schedule_reset(adapter);
 	}
 
 	return 0;
@@ -670,10 +668,8 @@ static int iavf_set_ringparam(struct net_device *netdev,
 		adapter->rx_desc_count = new_rx_count;
 	}
 
-	if (netif_running(netdev)) {
-		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
-	}
+	if (netif_running(netdev))
+		iavf_schedule_reset(adapter);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index ec4f85a95f26..5ca1e82799f8 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -16,6 +16,7 @@ static int iavf_setup_all_rx_resources(struct iavf_adapter *adapter);
 static int iavf_close(struct net_device *netdev);
 static void iavf_init_get_resources(struct iavf_adapter *adapter);
 static int iavf_check_reset_complete(struct iavf_hw *hw);
+static void iavf_handle_hw_reset(struct iavf_adapter *adapter);
 
 char iavf_driver_name[] = "iavf";
 static const char iavf_driver_string[] =
@@ -167,11 +168,8 @@ int iavf_lock_timeout(struct mutex *lock, unsigned int msecs)
  **/
 void iavf_schedule_reset(struct iavf_adapter *adapter)
 {
-	if (!(adapter->flags &
-	      (IAVF_FLAG_RESET_PENDING | IAVF_FLAG_RESET_NEEDED))) {
-		adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-		queue_work(iavf_wq, &adapter->reset_task);
-	}
+	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
+	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 0);
 }
 
 /**
@@ -2504,8 +2502,11 @@ static void iavf_watchdog_task(struct work_struct *work)
 				   msecs_to_jiffies(10));
 		return;
 	case __IAVF_RESETTING:
+		iavf_handle_hw_reset(adapter);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq, &adapter->watchdog_task, HZ * 2);
+		queue_delayed_work(iavf_wq,
+				   &adapter->watchdog_task,
+				   msecs_to_jiffies(2));
 		return;
 	case __IAVF_DOWN:
 	case __IAVF_DOWN_PENDING:
@@ -2540,14 +2541,12 @@ static void iavf_watchdog_task(struct work_struct *work)
 	/* check for hw reset */
 	reg_val = rd32(hw, IAVF_VF_ARQLEN1) & IAVF_VF_ARQLEN1_ARQENABLE_MASK;
 	if (!reg_val) {
-		adapter->flags |= IAVF_FLAG_RESET_PENDING;
+		iavf_schedule_reset(adapter);
 		adapter->aq_required = 0;
 		adapter->current_op = VIRTCHNL_OP_UNKNOWN;
 		dev_err(&adapter->pdev->dev, "Hardware reset detected\n");
-		queue_work(iavf_wq, &adapter->reset_task);
 		mutex_unlock(&adapter->crit_lock);
-		queue_delayed_work(iavf_wq,
-				   &adapter->watchdog_task, HZ * 2);
+		queue_work(iavf_wq, &adapter->watchdog_task.work);
 		return;
 	}
 
@@ -2624,18 +2623,15 @@ static void iavf_disable_vf(struct iavf_adapter *adapter)
 }
 
 /**
- * iavf_reset_task - Call-back task to handle hardware reset
- * @work: pointer to work_struct
+ * iavf_handle_hw_reset - Handle hardware reset
+ * @adapter: pointer to iavf_adapter
  *
  * During reset we need to shut down and reinitialize the admin queue
  * before we can use it to communicate with the PF again. We also clear
  * and reinit the rings because that context is lost as well.
  **/
-static void iavf_reset_task(struct work_struct *work)
+static void iavf_handle_hw_reset(struct iavf_adapter *adapter)
 {
-	struct iavf_adapter *adapter = container_of(work,
-						      struct iavf_adapter,
-						      reset_task);
 	struct virtchnl_vf_resource *vfres = adapter->vf_res;
 	struct net_device *netdev = adapter->netdev;
 	struct iavf_hw *hw = &adapter->hw;
@@ -2651,12 +2647,9 @@ static void iavf_reset_task(struct work_struct *work)
 	if (mutex_is_locked(&adapter->remove_lock))
 		return;
 
-	if (iavf_lock_timeout(&adapter->crit_lock, 200)) {
-		schedule_work(&adapter->reset_task);
-		return;
-	}
-	while (!mutex_trylock(&adapter->client_lock))
-		usleep_range(500, 1000);
+	adapter->flags |= IAVF_FLAG_RESET_PENDING;
+	adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
+
 	if (CLIENT_ENABLED(adapter)) {
 		adapter->flags &= ~(IAVF_FLAG_CLIENT_NEEDS_OPEN |
 				    IAVF_FLAG_CLIENT_NEEDS_CLOSE |
@@ -2665,17 +2658,14 @@ static void iavf_reset_task(struct work_struct *work)
 		cancel_delayed_work_sync(&adapter->client_task);
 		iavf_notify_client_close(&adapter->vsi, true);
 	}
+
+	/* Restart the AQ here. If we have been reset but didn't
+	 * detect it, or if the PF had to reinit, our AQ will be hosed.
+	 */
 	iavf_misc_irq_disable(adapter);
-	if (adapter->flags & IAVF_FLAG_RESET_NEEDED) {
-		adapter->flags &= ~IAVF_FLAG_RESET_NEEDED;
-		/* Restart the AQ here. If we have been reset but didn't
-		 * detect it, or if the PF had to reinit, our AQ will be hosed.
-		 */
-		iavf_shutdown_adminq(hw);
-		iavf_init_adminq(hw);
-		iavf_request_reset(adapter);
-	}
-	adapter->flags |= IAVF_FLAG_RESET_PENDING;
+	iavf_shutdown_adminq(hw);
+	iavf_init_adminq(hw);
+	iavf_request_reset(adapter);
 
 	/* poll until we see the reset actually happen */
 	for (i = 0; i < IAVF_RESET_WAIT_DETECTED_COUNT; i++) {
@@ -2804,8 +2794,6 @@ static void iavf_reset_task(struct work_struct *work)
 	adapter->aq_required |= IAVF_FLAG_AQ_ADD_CLOUD_FILTER;
 	iavf_misc_irq_enable(adapter);
 
-	mod_delayed_work(iavf_wq, &adapter->watchdog_task, 2);
-
 	/* We were running when the reset started, so we need to restore some
 	 * state here.
 	 */
@@ -2841,12 +2829,9 @@ static void iavf_reset_task(struct work_struct *work)
 		wake_up(&adapter->down_waitqueue);
 	}
 	mutex_unlock(&adapter->client_lock);
-	mutex_unlock(&adapter->crit_lock);
-
 	return;
 reset_err:
 	mutex_unlock(&adapter->client_lock);
-	mutex_unlock(&adapter->crit_lock);
 	if (running) {
 		iavf_change_state(adapter, __IAVF_RUNNING);
 		netdev->flags |= IFF_UP;
@@ -3900,8 +3885,7 @@ static int iavf_change_mtu(struct net_device *netdev, int new_mtu)
 		iavf_notify_client_l2_params(&adapter->vsi);
 		adapter->flags |= IAVF_FLAG_SERVICE_CLIENT_REQUESTED;
 	}
-	adapter->flags |= IAVF_FLAG_RESET_NEEDED;
-	queue_work(iavf_wq, &adapter->reset_task);
+	iavf_schedule_reset(adapter);
 
 	return 0;
 }
@@ -4490,7 +4474,6 @@ static int iavf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	INIT_LIST_HEAD(&adapter->fdir_list_head);
 	INIT_LIST_HEAD(&adapter->adv_rss_list_head);
 
-	INIT_WORK(&adapter->reset_task, iavf_reset_task);
 	INIT_WORK(&adapter->adminq_task, iavf_adminq_task);
 	INIT_DELAYED_WORK(&adapter->watchdog_task, iavf_watchdog_task);
 	INIT_DELAYED_WORK(&adapter->client_task, iavf_client_task);
@@ -4572,8 +4555,7 @@ static int __maybe_unused iavf_resume(struct device *dev_d)
 		return err;
 	}
 
-	queue_work(iavf_wq, &adapter->reset_task);
-
+	iavf_schedule_reset(adapter);
 	netif_device_attach(adapter->netdev);
 
 	return err;
@@ -4602,7 +4584,6 @@ static void iavf_remove(struct pci_dev *pdev)
 	int err;
 	/* Indicate we are in remove and not to run reset_task */
 	mutex_lock(&adapter->remove_lock);
-	cancel_work_sync(&adapter->reset_task);
 	cancel_delayed_work_sync(&adapter->watchdog_task);
 	cancel_delayed_work_sync(&adapter->client_task);
 	if (adapter->netdev_registered) {
diff --git a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
index 5ee1d118fd30..115c1b15cb66 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_virtchnl.c
@@ -1899,8 +1899,8 @@ void iavf_virtchnl_completion(struct iavf_adapter *adapter,
 			dev_info(&adapter->pdev->dev, "Reset indication received from the PF\n");
 			if (!(adapter->flags & IAVF_FLAG_RESET_PENDING)) {
 				adapter->flags |= IAVF_FLAG_RESET_PENDING;
-				dev_info(&adapter->pdev->dev, "Scheduling reset task\n");
-				queue_work(iavf_wq, &adapter->reset_task);
+				dev_info(&adapter->pdev->dev, "Scheduling reset\n");
+				iavf_schedule_reset(adapter);
 			}
 			break;
 		default:
-- 
2.27.0
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
