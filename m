Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id B133B405EAC
	for <lists+intel-wired-lan@lfdr.de>; Thu,  9 Sep 2021 23:17:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1AEAA60B42;
	Thu,  9 Sep 2021 21:17:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tG06DocdaEw9; Thu,  9 Sep 2021 21:17:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 15FCA60B30;
	Thu,  9 Sep 2021 21:17:00 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id B77A11BF2AB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 21:16:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id B286F60B30
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 21:16:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dbhLm_gNc0kG for <intel-wired-lan@lists.osuosl.org>;
 Thu,  9 Sep 2021 21:16:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 79FCC607B8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  9 Sep 2021 21:16:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10102"; a="220941697"
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="220941697"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Sep 2021 14:16:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,281,1624345200"; d="scan'208";a="470254381"
Received: from orsmsx604.amr.corp.intel.com ([10.22.229.17])
 by orsmga007.jf.intel.com with ESMTP; 09 Sep 2021 14:16:53 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX604.amr.corp.intel.com (10.22.229.17) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 14:16:53 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 9 Sep 2021 14:16:52 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 9 Sep 2021 14:16:52 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Thu, 9 Sep 2021 14:16:52 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EpA+D1VD4Ta0u+gMrdE2rPmBhvaFvVweXQXLTjehUJujqYJW12k/X/MbTSh0J8oi4GZ8daexGUAH+5B28lSM1aw0IHe44TgF3bnaaOyzdPpC9+gdbjteFvIyMk7HF8I6T5FJ6L0+UnktJWCmfvS9dzrBlGaQ0HrOsS10ov9WvrGoGbt82DQgRxdbFfGUSoxes6ITujuU3uxVJcQnj52w3uVShhwAubob7xkvcNDZTGEDAh8MgJJk+d8Y7zPrHlKZIaPjgdT/x6SDCzZGb+LXXOUFQhgxpo2250p0O8Wt8RzoecbHZ2J/rpv/j/QeNivOicwVUDDhz+PBQr1wdRqMJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=QZ8PeF4D2GHqDNm7zng5fSJAAyXVS7MIJucD9oFF94k=;
 b=Suo3yQYZi8/M88zdBcH5ewZCe/Cd9UnVjybM/VZPRNp52+mt2IDhXO6ayNZQuUrYJgtWth+ob2w/cACCnh+2BYst5LABL/dCXeXvb+TGf6iEjGkmay8AapkQzCKb+sLMocgeZQqYVPm/8+jejB2UFR55lkz6JilZUUeUqagnJHXDRphCRRNZ2TDhIf3tDyETl0xX7xJEcuPcrdC5Ny/zKbyicgC+bTG+YxYt5fvetj8yyoIaOQY9qohTkvlsqrBYj2ZI3bVslXp3Blh/40YnDYB95lzzmdCci7cLpbYH9Q+GIUWKG+SEeO4KOhFVDFEIa+z2pbUMSy5bacxFo6PhoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QZ8PeF4D2GHqDNm7zng5fSJAAyXVS7MIJucD9oFF94k=;
 b=qVegvLAqCwqnIu76r0Wkc4B67kp9SviwtrgV7sNkHYiQxTLigw7fmhsotuUE7V4zsXgWNyTk/ayyei5ivPKoF/KU4ggk7lUehb+IpIBo5+/rzR9Oo1NFXSQ94M3WMhNbisgIwuU4dZC92RjHjVTNVmeMROWEOqUNSFSemEPHxJQ=
Received: from SN6PR11MB3229.namprd11.prod.outlook.com (2603:10b6:805:ba::28)
 by SN6PR11MB2704.namprd11.prod.outlook.com (2603:10b6:805:53::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Thu, 9 Sep
 2021 21:16:51 +0000
Received: from SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4]) by SN6PR11MB3229.namprd11.prod.outlook.com
 ([fe80::d0d5:c84e:41b8:a9e4%3]) with mapi id 15.20.4500.016; Thu, 9 Sep 2021
 21:16:51 +0000
From: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net] ice: Fix not stopping Tx queues
 for VFs
Thread-Index: AQHXpbEsnTf8g52l8ESzL1Qnc9TYMqucNbqA
Date: Thu, 9 Sep 2021 21:16:51 +0000
Message-ID: <f2953310f50a0c681643a71d2c80ac2a611388bb.camel@intel.com>
References: <20210909192709.26269-1-brett.creeley@intel.com>
In-Reply-To: <20210909192709.26269-1-brett.creeley@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.36.5 (3.36.5-2.fc32) 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 921f2f98-3706-40b3-4917-08d973d72450
x-ms-traffictypediagnostic: SN6PR11MB2704:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <SN6PR11MB27040CD249D4538CFCA3195FC6D59@SN6PR11MB2704.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fR7bKW7IRMiAw2MsU99yMwizZKBNIpC/ngeTUlHfCKF5hztluR8FxuGP/ulfGjSXrIeCAVbG5hqx+l+D6VnnmfZRbxK4LdjujLwEs6nNyrbFC8oLZdFBrHfu77EyXRyoUejaNi246GtgWd0/r2WDQUM9vmfIJjVL5NJadEgSh9mv4OaF94zNe2YC3Z9lw9cqVXL4/ShR1K9ol9tSzoa82y7GopPhRQlDN1IE9UIbEBOyCHBL/f0ZeE3n5xIulR1dOunfeYxgmN3LT2mw9JGOAPYd64Ulovi54IyCVYc6FoRwN/tWNSuocMIcozwuM+Tkt+EbrnQn4KqF/d9J4uk9kcD/2IDf+bv5dnkFBoVFyRBXLbDOCBx5WEyuMrIdbcUsBqMmX5gls8/PyX5IaDJKu3+7aZ5NkkqswZpme74+vqVlXOA26dy/SYpUVXuLjBmaH41ANseqsUOr+Cdqaimhm4GpP67568OH0GLtW5ANhvBdR6ddwAWAFXG6NG3G4JaiMuOgESrjDEaFP5u7rTIq58SWwtf6pHPhvHvmQNVOeoYPJBxINxIyttUD+1SLNHNUaaVArEE8o2ID6w2EDpmz3yBG2hL+jiVtutPu6z6kMVFAG66ILQfCd73TR6QPiudDwQSogAIzfV74lJKAjKPXjUNdhL2yL/XsO0J+dVdj4D+eT6QzSwVE8Z9uJBzEra8nlnQr8KXYrC039T3wXiI16g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3229.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(110136005)(83380400001)(316002)(107886003)(36756003)(86362001)(38100700002)(122000001)(6506007)(38070700005)(8936002)(26005)(71200400001)(186003)(5660300002)(8676002)(64756008)(508600001)(66476007)(66556008)(66946007)(66446008)(6512007)(2616005)(2906002)(76116006)(4326008)(91956017)(6486002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?K3NkekQ4clVHWTZTZ0Nva2V0TFZZaU5GV2RJV09wZmY3eUVNekVpOVM0eUdT?=
 =?utf-8?B?bUs0M1BGNzV3YVZZVUQ2QitKOThLb2FWQjFMeml3SC91ZHh3K3hqRmdzcFVU?=
 =?utf-8?B?cDZnSDg3V3hFSGxtZTYvY2t5NGltUGdmRjBHTWVyaktsd1lpRVl2ZDVocEo1?=
 =?utf-8?B?dlZFdGVqLy8zdm5EV2hkdkxybEZYc3pVem41c2R4YTJ5R1IyMTVMR3lrNzQ3?=
 =?utf-8?B?T2RqQURtcUxiL1FFNzNDRzNYRXdCM1hnWnR3bkFaWCtKdjRkNTNpelNDNTZq?=
 =?utf-8?B?YkJGZ1dCd2RLc3YvaDIraDFJZTZad3RYUTFuU1Blbk4rdCtENVRib25VbWtp?=
 =?utf-8?B?SjY3clJvNWhTbC93aDFJTll5U25HKzFzbDd5NnN4ZVczQy9QcWtQeHRoWHpH?=
 =?utf-8?B?NlE3Z2VObWxrNGNpRkxUcnA2MWxJaTBwczhOaWpaQ0JRWUpwVitWYU4wejNN?=
 =?utf-8?B?L3Q1NVZFZ1ZZUzY2ZXNkS1lhalE5OUl5MjNmOXYzTFgwWWZ4MWg3dFlZVUhx?=
 =?utf-8?B?U1c1ZGlnZ3F2bVN5THRrR0VSU0lqZml0cGZIUUxEOU1obEI5Z1ZxckpOakda?=
 =?utf-8?B?QVV2M1QyMFkwK21MYU1tb1p4cUM1elRYQk1pa1AwcGxxUkJ2enl2RVQ5UURn?=
 =?utf-8?B?SnZ5QzVGdmp5R3hFUEVQdFVEbUR0SHhkQitPQ0Q3cnVJeWFDdUJCd0JCSGlR?=
 =?utf-8?B?WkJqWTdoRXRycmtuc0JYTndYNDN5TWdVbWFnek1WV1Y5MkhXQ3RTNTljYzMx?=
 =?utf-8?B?VGd2RjE2ZldGTTliWTY4bE9DcVdrSDdRKzhPUVlvY2crTnJsQldSRU9WY2J2?=
 =?utf-8?B?YmJQcXM0WjREWmJHblROZXhtMmdPdURuME5Ea3FOUkRpUWh5RXkrVmk0aVpw?=
 =?utf-8?B?cnpNOUNjVW12b3JXQU5RMm03ZjR6VnRKaEFRbXJ1T25LY1JJb09QMVd1My81?=
 =?utf-8?B?MGZnR3BCNTY2Q3FhMXE4YmhnbnRNbGJDMG9xSUhiNkltVW0zdGRhZWREbk1O?=
 =?utf-8?B?b0J1NDIwR1ByTlA3eUlFNG16UldlZmlGMHpJclR4N3hSWDZWenpJV2xQQmZ4?=
 =?utf-8?B?Q0R1dmVTTDhTSFRBRzJTY2FwbDN4dHNVN0RSVWNPYUgzYjlTZForOTJrckV3?=
 =?utf-8?B?Y1JJTUhtN0hrOFBpc0FPVW9tbTN0NTNjTzl6Wm8xWm5lWjhBajk0VjU5WXJQ?=
 =?utf-8?B?M2tkeTJueGo2WmxkRjl3K3FCaXJjUzN0SkpEQVlkOWlVM1NkRCtDY3pIZGF2?=
 =?utf-8?B?K2lGWi9PR25BeTduZmV2UE5vQ0pHQ2E4YitrSzJYR053eXlEdlZMSWl0NFZi?=
 =?utf-8?B?cnRsM1E1ZjZ5OW1xdU1zUGc4MVpndjJscmNlMDNxM2s2aTg5R2gzcWpJUWJT?=
 =?utf-8?B?QzJZSVdmZ2U1b3VPQnEwU0ZZYmdka09EM1E2ZmE0Z2JTUUpsbnRubkFPOFR4?=
 =?utf-8?B?enhHcmhXNGJuazhCREZzMmVIYU1Ed2RLRHkzcmJVSTFaMXdXbG8zQkFhcVV4?=
 =?utf-8?B?L09hZWEvMERBOFVjSHQrMFg4YnY2NTllTTY2ZFNVdy9oTllaZFV0M1BoSThU?=
 =?utf-8?B?Z1hSYUdLRGs3eCt2L09ycFhtNDRjbDkzY2M1RnEwVlI4VGhSUmJHZEk1WlB3?=
 =?utf-8?B?VExwU201djJMUzlXNHZseXE1SFE1MmM2QlZnMkNINTUvQ1JnZFo3QjBZeW51?=
 =?utf-8?B?QldqL2hweUk5MytuNmVqSUtCQU9YclJtUnV6N3pPVGd0T1MzalJrU3A5UXI4?=
 =?utf-8?B?WnlzTlFtM2ZtdjE2REJUS1BMVWFHZFR3encvcWdPNmVIL2pDcEdQcGRac2Vl?=
 =?utf-8?B?em5WSmhLYnJHTnRqbCtqQT09?=
Content-ID: <7572EFAE3576684DB2189AC042D0B14E@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3229.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 921f2f98-3706-40b3-4917-08d973d72450
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Sep 2021 21:16:51.2770 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rxti6SRR8AOZw9gUtKA55CudY3kSdcFzunwihHB/ELutda8VO1fwY/Qn2DQr8+H2cOYbLhlWAcQTsHY/OQF7UqeqBM9MApXWTAAy1zFKzKU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN6PR11MB2704
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net] ice: Fix not stopping Tx queues
 for VFs
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 2021-09-09 at 12:27 -0700, Brett Creeley wrote:
> When a VF is removed and/or reset its Tx queues need to be
> stopped from the PF. This is done by calling the ice_dis_vf_qs()
> function, which calls ice_vsi_stop_lan_tx_rings(). Currently
> ice_dis_vf_qs() is protected by the VF state bit ICE_VF_STATE_QS_ENA.
> Unfortunately, this is causing the Tx queues to not be disabled in
> some
> cases and when the VF tries to re-enable/reconfigure its Tx queues
> over
> virtchnl the op is failing. This is because a VF can be reset and/or
> removed before the ICE_VF_STATE_QS_ENA bit is set, but the Tx queues
> were already configured via ice_vsi_cfg_single_txq() in the
> VIRTCHNL_OP_CONFIG_VSI_QUEUES op. However, the ICE_VF_STATE_QS_ENA
> bit
> is set on a successful VIRTCHNL_OP_ENABLE_QUEUES, which will always
> happen after the VIRTCHNL_OP_CONFIG_VSI_QUEUES op.
> 
> This was causing the following error message when loading the ice
> driver, creating VFs, and modifying VF trust in an endless loop:
> 
> [35274.192484] ice 0000:88:00.0: Failed to set LAN Tx queue context,
> error: ICE_ERR_PARAM
> [35274.193074] ice 0000:88:00.0: VF 0 failed opcode 6, retval: -5
> [35274.193640] iavf 0000:88:01.0: PF returned error -5
> (IAVF_ERR_PARAM) to our request 6
> 
> Fix this by always calling ice_dis_vf_qs() and silencing the error
> message in ice_vsi_stop_tx_ring() since the calling code ignores the
> return anyway. Also, all other places that call
> ice_vsi_stop_tx_ring()
> catch the error, so this doesn't affect those flows since there was
> no
> change to the values the function returns.
> 
> Other solutions were considered (i.e. tracking which VF queues had
> been
> "started/configured" in VIRTCHNL_OP_CONFIG_VSI_QUEUES, but it seemed
> more complicated than it was worth. This solution also brings in the
> chance for other unexpected conditions due to invalid state bit
> checks.
> So, the proposed solution seemed like the best option since there is
> no
> harm in failing to stop Tx queues that were never started.
> 
> This issue can be seen using the following commands:
> 
> for i in {0..50}; do
>         rmmod ice
>         modprobe ice
> 
>         sleep 1
> 
>         echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs
> 
>         ip link set ens785f1 vf 0 trust on
>         ip link set ens785f0 vf 0 trust on
> 
>         sleep 2
> 
>         echo 0 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 0 > /sys/class/net/ens785f1/device/sriov_numvfs
>         sleep 1
>         echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs
> 
>         ip link set ens785f1 vf 0 trust on
>         ip link set ens785f0 vf 0 trust on
> done
> 
> Fixes: 77ca27c ("ice: add support for
> virtchnl_queue_select.[tx|rx]_queues bitmap")

The Fixes tag needs a little work:

Fixes tag: Fixes: 77ca27c ("ice: add support for
virtchnl_queue_select.[tx|rx]_queues bitmap")
	Has these problem(s):
		- SHA1 should be at least 12 digits long
		  Can be fixed by setting core.abbrev to 12 (or more) or (for
git v2.11
		  or later) just making sure it is not set (or set to "auto").


> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
