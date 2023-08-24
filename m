Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2454C786821
	for <lists+intel-wired-lan@lfdr.de>; Thu, 24 Aug 2023 09:10:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9A7774190C;
	Thu, 24 Aug 2023 07:10:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9A7774190C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692861038;
	bh=Rx7fN2xKfScA6LiRBJrwgEm7o27YXeZywmKI7Djypg0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OLteEBTEfzECln0CHWwogyVYSY473wZPLZL7G1krauf3gA6zDMAzwleHK1f8ZOHNy
	 NuEy/s4bTSeEOZ47wPU3McU8pCqXdc2s6SntJ2/t03ams86khkhyMljUxN7Rugjxug
	 nDK5qr/6euNf5ISBWJ6QgpqHGN1wi2koifzGx2DflbdVKwdaL0opobHWyiFX2x06Ks
	 14rc93suG9KMOKFBYlP5d0C1gxnh3pbNZVFKb6Whflzxf3T9ooR+4DDOP46oJR79KD
	 akCqF1ZnxeCZxqjT8Ac3zQKD2sxRD7BLVWXxziPdBD9RTnihAlhd9FiZR8Kb2Tqrks
	 CZxN65hukt+LQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id RaeWKX241Tkp; Thu, 24 Aug 2023 07:10:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E50C841857;
	Thu, 24 Aug 2023 07:10:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E50C841857
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5222F1BF32A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:10:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 27C6E6131C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:10:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 27C6E6131C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id oOC5z_2xfK1I for <intel-wired-lan@lists.osuosl.org>;
 Thu, 24 Aug 2023 07:10:28 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0533960EAB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 24 Aug 2023 07:10:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0533960EAB
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="359348403"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="359348403"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Aug 2023 00:10:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10811"; a="806995561"
X-IronPort-AV: E=Sophos;i="6.01,195,1684825200"; d="scan'208";a="806995561"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by fmsmga004.fm.intel.com with ESMTP; 24 Aug 2023 00:10:26 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 24 Aug 2023 00:10:25 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 24 Aug 2023 00:10:25 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.106)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 24 Aug 2023 00:10:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ACHEAUmazxe8ofU9mOgPo0uG5uAXfim/su/1Jv2zEroo/jz4PnOPaY7p3qZuNFG/f3vBZ+yFUUVYxo9TW5N29pjovw5o7+n0LCMRvfKHo6a8F07WkeTHIAxlUTgelx9Ecz25HyR1+OjL7QnyQjcQXwHRXa/hlBeUvb8nH1X1VNm5VeZMSpwaev2ovhTPWrbZ4psEJCA4DiUorL0yslJ7BFKPGJgh4NKmznoqO7Mg6cwnBG7VZD+uMdMWrxqno7vvagTAmQRdSSxiulFmSPpkN7kHXjITk4Owf7FxbeQzk6QKwO1EjByBNRYedYicsDlMhTdp1Qzh/2qC709dQF5jPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CjJI+zsLgeA8s0FMVQ+7ofnX00TbwE2EJvItqcWn3yM=;
 b=jUwQoJjDU6a/4M6zGyCso/dPeJIL+mCDbo+sF+WXVwP+O5sJcPgTh8v0UwNxIXKB1lkqyW+QRv44NIgw0EPQf0lWaMcxSbuszVP2syT0z3DgW85qToHKAE2L5OWO80XPjx/e58R2apFHtS6ptu5LZpRyPP38+MH2KRJeEvD0I89KLOWP23ogMznb9D8CH1y8NUS+Oa3e97RVaE/KXWmqK/1KrYd78Gx/iwrqNEanMUzjYnLuXNevJi1P3UWmn+d/6Y0MTSjf+YR06cHArpZd01HQy1gMGi7kiwn/hq6bi/qPyvldsfdtjUctxHSB63mez4tb68mIptBySdltup2eRw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3723.namprd11.prod.outlook.com (2603:10b6:5:13f::25)
 by MW4PR11MB6886.namprd11.prod.outlook.com (2603:10b6:303:224::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.26; Thu, 24 Aug
 2023 07:10:21 +0000
Received: from DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80]) by DM6PR11MB3723.namprd11.prod.outlook.com
 ([fe80::ce6:bce1:eaf8:ad80%7]) with mapi id 15.20.6699.020; Thu, 24 Aug 2023
 07:10:21 +0000
From: "Guo, Junfeng" <junfeng.guo@intel.com>
To: ivecera <ivecera@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [PATCH net-next v4 12/15] ice: add parser execution main loop
Thread-Index: AQHZ0O9IWqbAR9v/Y06vvVBk9FP5ta/33sqAgAEi9IA=
Date: Thu, 24 Aug 2023 07:10:20 +0000
Message-ID: <DM6PR11MB3723F7AE358E735736C838D2E71DA@DM6PR11MB3723.namprd11.prod.outlook.com>
References: <20230817093442.2576997-2-junfeng.guo@intel.com>
 <20230817094240.2584745-1-junfeng.guo@intel.com>
 <20230817094240.2584745-13-junfeng.guo@intel.com>
 <ae56ced4-b896-868c-a9d3-80adff015612@redhat.com>
In-Reply-To: <ae56ced4-b896-868c-a9d3-80adff015612@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM6PR11MB3723:EE_|MW4PR11MB6886:EE_
x-ms-office365-filtering-correlation-id: ddeaf52f-166e-4e68-6618-08dba4712dd2
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: HuLlIiGrTRc/woEHY9aLtWICRD3Yr41zlQ3Had1ofcJjQoCeddc4Ag+TS6kjvtnYKRtzWC/EsNXyiFrxLBlLBSkhE6qsfNzVILYGDCNXPQrbgB/xMp6XQPzQn+b83fqcgqVhT1AM1vcU1XpPqWy+FZdPycdyHgINP23WaQVl/LQf1MkF3oiRbYNxPAyKLRYTUEWR486qhKDbsZNyOdwC9aWY7jsVmskNE1XXDTEPHTsat9p4AGKfuMqlLUdxGSQHs8thjNkdw+Dy44sjj/yYWR5L9ovqej+ahOL2RK+EPyJhUIPyRlfeC77q6nfPRHDWqwbrvnd4pO3FbhrXNCbFdqARpxBhaOprFpwmHUjxzHXX9oG6PTX05kCZFdecXX4BGBLRiAUtswniU6twHYFNg1j/d8GUSlx1P1HKfFgVt9CPILvprWNEdlOfiKXj5vY9Ex0G1LxgtO2ltf4mE3bK8vbRhmguuKWF/rv3vdoo9Wv4oUAn3O9zENZ92Xsr60Qox5HWn5y5c9/SvGpdgkoZtY2Ji3eRRYmx1pPdzMPUYDYAEl+YR6XmZF3vHasIoAUFZNrh/oP2Z9lP2s/sT38Zs/AHVQmdDU0ELTHelZmMPVwXFGZJcjGLCL23OOmEXvyK
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3723.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(366004)(136003)(396003)(346002)(376002)(451199024)(1800799009)(186009)(66946007)(64756008)(66446008)(76116006)(54906003)(66476007)(66556008)(110136005)(5660300002)(107886003)(41300700001)(316002)(2906002)(8676002)(30864003)(478600001)(52536014)(86362001)(8936002)(4326008)(122000001)(38070700005)(38100700002)(71200400001)(9686003)(6506007)(7696005)(82960400001)(53546011)(33656002)(55016003)(83380400001)(26005)(559001)(579004);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WnZoeUd3T1lLRm9vQ2NGS2xkRXBpQmQzSlJ0ZzIzclR1dXhyb2FZVjBUWXpk?=
 =?utf-8?B?Um1XODMzREh0emxQaUMwUG4zSDBXMm14Z0VSeE1kOHNuZ0U3TnlDV0NhTGhv?=
 =?utf-8?B?Qnhkb04rR2tTaHJFaURqNWRLWGZBdFdaaWpzczhFUnJJaktGQzJrVEtYUG04?=
 =?utf-8?B?djJkaHM3RVlIcDFxU2habXFPVU9tdVppK1RkZHU3ZEt6SlRZSjhLMEowWVRC?=
 =?utf-8?B?UVhDSmhHaDdDNDZwSER6VFRZQzVTRjh6aXpBSGpkNnA4azVMeEw5bXlUcE5q?=
 =?utf-8?B?WVpXNlFxMXo1Mlh1NXA3eWR4QkttTlR1Kzc2VExzYVlYZ1JCRW01Rm9pelVv?=
 =?utf-8?B?WktlaFBoa2gzSVRheWFRSnpDRVpQeURHUGpjdUJ6NXorZTlHVS9HcXlXWS9s?=
 =?utf-8?B?cDhHTWdobVp0b3Z0ZnRMTTNWbkpjSGJBamo2aDBTS0JwOG5aTFVnR21YNWdy?=
 =?utf-8?B?QTQ5SGVJeWc3c0Nhb1hoTnhiMFoxdjAwR0JYcVpCR1Rubm5HY2w1b0xLUlVW?=
 =?utf-8?B?dnVBRXBRSHFWTHlEWTZ4Tlk4SXpScVdEZ0lIdUhTb084VkdaQkhPMGZyWjRD?=
 =?utf-8?B?RW44c1JBV040Rmc2UVVvRHlNMWZ5STlZYW9JNEtMVHIzTVA3QTBRVytkeWpl?=
 =?utf-8?B?L0dKTGhvWDgvbzUwYndKSU05UUZxVWZtMUhxblBYZEJ3enVQWjN4R0E5dnp2?=
 =?utf-8?B?amFFRmdGcmVpczVpTWRXays5M1hQWm10MVZlODFoVm9SYXBCekJkWU9jN0Vo?=
 =?utf-8?B?UUN1eGtZZmV1amFLUTUrMlFuR1FKNDE2NFREeitKanhsdS9GczJhM2dGam9v?=
 =?utf-8?B?dWN6Y2RYV3lxVnlWQkhVVFZnTS9NOVAvc0dBU0lwd1lZM3ZOS2dxbmtvb3Iz?=
 =?utf-8?B?SGpTTkI5bVFEc3MrYWpmRmJHa1p2eFNWeUxiSCtnTzRydStDd1dyeFBocUdN?=
 =?utf-8?B?YU1BWmlUR3pKK2NzUFRHaG5ONTdLRG5ENDViRm9XeXNSbnNMQXc0KzB1cU9J?=
 =?utf-8?B?ZmQ4U3o1Uk81ZUFPVW1mNHg0NHljeUlnd2hoa1BrUkV5U0tKWW82ZjkyajV2?=
 =?utf-8?B?RlJUd0F5UTNJdDlRbE1jUk9PeHJVd1BkVkRFU2htQVZtakFGKzNHWGxWNmx0?=
 =?utf-8?B?bEZPamIweHIyazJBQ0hxZFJWNWdkMm5kMitPbFc4d2xtK3NIMUhQZ2d4TG1h?=
 =?utf-8?B?RFlFdzZwam9wYlo5S2I3YkdXb1BTU0lvMlZJR0NYcWZ5OGVPcTdJT2sya3Q1?=
 =?utf-8?B?K1hrdzgrV2xSbWRoY0kyRWpGL04vVEM1bEJ3bitPY0JjSU02bUVoMGJHVUVP?=
 =?utf-8?B?SHEwSmZLeEJMaXhYSXhGcXgwYnNqbUExM1krVVlXV05tNlRaaEg1dkJMdGZ0?=
 =?utf-8?B?c0plYWtRUkEyaUFnaW84TjFxYVFwbU1ZdTZvWUY3MWdSRmpZVGxiMXI0VXRU?=
 =?utf-8?B?d0FxSEM5cXhXYmkyRHlvQ3M0N1Bmb0I4R2d1SUxSVHZnZ0FvTDRQZE1lbE1X?=
 =?utf-8?B?YWVJRUVDWlVCaXZaZWVBZ0lhaXY3ZTRmWUg0QnFya3cyV2U4N0JTbmduTGlS?=
 =?utf-8?B?aDBObkREanVDZGpvbDVYMFJKTU8rSnlWZ0ZIUkJSNzZxemlkSmdqM3JHOEVZ?=
 =?utf-8?B?T1NXcG5QWFE1Nm44OFBBVisxeGdMdFVyRXZZT0hBeHdFejhiVXRYSFZzdzZZ?=
 =?utf-8?B?c3MzbzlzR0FOZHNYdWdXSGxCajYxdWpGKzZSTzJkQnl0bmhQc1FZSmFXSjdL?=
 =?utf-8?B?NFNFWXREVFpkMUl1SzBTWTNVWTlIRFNSVklTUXo2alF1dEo5TFE1bEFsbUVP?=
 =?utf-8?B?OCsxNUpzdmNKbkxJdkFRaU5XcWxpL0tiWnVLaHFpd0lWcU05SDB6SWltQytO?=
 =?utf-8?B?eEs5Lzk0c1VlcDFERW1DeUdKU2J5enNqREFralVSMlVCczhIQ2l4SmJub2NX?=
 =?utf-8?B?QU15SnJIb0t4TWpPRmxNeVdnK0w2UG1oY1g1UHdQN2pMcThCQkU0clBzSW5y?=
 =?utf-8?B?YUxVSEk0Sjlsck4yWVl5NXVrTEZ5QjNPU2RGOFFtckR0S1ZPNEZHN004TFpi?=
 =?utf-8?B?NERsK2JDZWFUQzNQTlNKRVptUU9SaTByellSQWFFU3pzSjhOenU2Kyt5Q0E2?=
 =?utf-8?Q?9NSva3BY8MLZt+xOZsJzw0RAC?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3723.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddeaf52f-166e-4e68-6618-08dba4712dd2
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Aug 2023 07:10:20.9498 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 5OFtM47vnCF3gM3VzVzfp2KvUNgmaiHdBBYE9vZ5Ip7QlD7dTv/SRwq3IXDYtdxWSx7lv8jSFtNFnt7xMIZIag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6886
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692861028; x=1724397028;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CjJI+zsLgeA8s0FMVQ+7ofnX00TbwE2EJvItqcWn3yM=;
 b=dnr3aJO5xqWNElgCmdDHiu3jM8MwfH/CKQ8TJ6+tJ6Zazc8H1g0ZBxYG
 xqsnVfnIAtT+Q9luGs4OimEabu/INq1LRsqnbk/jDjkjUas/i+SMsURdT
 IdrGq9X7mV9iVU15BINmFTshB/rEKSnNaIPl/SYIqjCYp4H5T98P99Nt2
 U6WcDfMsF5GfM+HuFNn2tm9cxASSJvpXUOWygEDmR+/B4S5GJ6gohZwqe
 QnRMu3dLP0ie5WPh58UThEA1LdyA/7XVSxjkHJiToYK13Gk20z1Jx1p41
 d9LGLfqnoHbcpo1o9E/YA40n1nlAKxdIwsF9j6ZFJdViTMvvqmEZXvULJ
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dnr3aJO5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v4 12/15] ice: add parser
 execution main loop
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
Cc: "Zhang, Qi Z" <qi.z.zhang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Ivan Vecera <ivecera@redhat.com>
> Sent: Wednesday, August 23, 2023 20:50
> To: Guo, Junfeng <junfeng.guo@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Cc: Zhang, Qi Z <qi.z.zhang@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>
> Subject: Re: [PATCH net-next v4 12/15] ice: add parser execution main
> loop
> 
> 
> 
> On 17. 08. 23 11:42, Junfeng Guo wrote:
> > Implement function ice_parser_rt_execute which perform the main
> > loop of the parser.
> >
> > Also include the Parser Library files into ice Makefile.
> >
> > Signed-off-by: Junfeng Guo <junfeng.guo@intel.com>
> > ---
> >   drivers/net/ethernet/intel/ice/Makefile       |  11 +
> >   .../net/ethernet/intel/ice/ice_parser_rt.c    | 787
> +++++++++++++++++-
> >   .../net/ethernet/intel/ice/ice_parser_rt.h    |  34 +
> >   3 files changed, 831 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/ethernet/intel/ice/Makefile
> b/drivers/net/ethernet/intel/ice/Makefile
> > index 5d89392f969b..a0c3d4804300 100644
> > --- a/drivers/net/ethernet/intel/ice/Makefile
> > +++ b/drivers/net/ethernet/intel/ice/Makefile
> > @@ -26,6 +26,17 @@ ice-y := ice_main.o	\
> >   	 ice_vlan_mode.o \
> >   	 ice_flex_pipe.o \
> >   	 ice_flow.o	\
> > +	 ice_parser.o    \
> > +	 ice_imem.o      \
> > +	 ice_pg_cam.o    \
> > +	 ice_metainit.o  \
> > +	 ice_bst_tcam.o  \
> > +	 ice_ptype_mk.o  \
> > +	 ice_mk_grp.o    \
> > +	 ice_proto_grp.o \
> > +	 ice_flg_rd.o    \
> > +	 ice_xlt_kb.o    \
> > +	 ice_parser_rt.o \
> >   	 ice_idc.o	\
> >   	 ice_devlink.o	\
> >   	 ice_ddp.o	\
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > index e898180ebee6..5fc2d4307749 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.c
> > @@ -31,6 +31,33 @@ static void _ice_rt_flag_set(struct
> ice_parser_rt *rt, int idx, bool val)
> >
> >   	if (val)
> >   		rt->gpr[ICE_GPR_FLG_IDX + y] |= (u16)BIT(x);
> > +	else
> > +		rt->gpr[ICE_GPR_FLG_IDX + y] &= ~(u16)BIT(x);
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser flag %d
> value %d\n",
> > +		  idx, val);
> > +}
> > +
> > +static void _ice_rt_gpr_set(struct ice_parser_rt *rt, int idx, u16 val)
> > +{
> > +	if (idx == ICE_GPR_HO_IDX)
> > +		_ice_rt_ho_set(rt, val);
> > +	else
> > +		rt->gpr[idx] = val;
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set GPR %d
> value %d\n",
> > +		  idx, val);
> > +}
> > +
> > +static void _ice_rt_err_set(struct ice_parser_rt *rt, int idx, bool val)
> > +{
> > +	if (val)
> > +		rt->gpr[ICE_GPR_ERR_IDX] |= (u16)BIT(idx);
> > +	else
> > +		rt->gpr[ICE_GPR_ERR_IDX] &= ~(u16)BIT(idx);
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set parser error %d
> value %d\n",
> > +		  idx, val);
> >   }
> >
> >   /**
> > @@ -80,6 +107,666 @@ void ice_parser_rt_pktbuf_set(struct
> ice_parser_rt *rt, const u8 *pkt_buf,
> >   	memcpy(&rt->gpr[ICE_GPR_HV_IDX], &rt->pkt_buf[ho],
> ICE_GPR_HV_SIZE);
> >   }
> >
> > +static void _ice_bst_key_init(struct ice_parser_rt *rt,
> > +			      struct ice_imem_item *imem)
> > +{
> > +	u8 tsr = (u8)rt->gpr[ICE_GPR_TSR_IDX];
> > +	u16 ho = rt->gpr[ICE_GPR_HO_IDX];
> > +	u8 *key = rt->bst_key;
> > +	int idd, i;
> > +
> > +	idd = ICE_BST_TCAM_KEY_SIZE - 1;
> > +	if (imem->b_kb.tsr_ctrl)
> > +		key[idd] = (u8)tsr;
> > +	else
> > +		key[idd] = imem->b_kb.prio;
> > +
> > +	idd = ICE_BST_KEY_TCAM_SIZE - 1;
> > +	for (i = idd; i >= 0; i--) {
> > +		int j;
> > +
> > +		j = ho + idd - i;
> > +		if (j < ICE_PARSER_MAX_PKT_LEN)
> > +			key[i] = rt->pkt_buf[ho + idd - i];
> > +		else
> > +			key[i] = 0;
> > +	}
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generated Boost
> TCAM Key:\n");
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "%02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X %02X
>  %02X %02X %02X %02X %02X %02X %02X %02X\n",
> > +		  key[0], key[1], key[2], key[3], key[4],
> > +		  key[5], key[6], key[7], key[8], key[9],
> > +		  key[10], key[11], key[12], key[13], key[14],
> > +		  key[15], key[16], key[17], key[18], key[19]);
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "\n");
> > +}
> > +
> > +static u8 _ice_bit_rev_u8(u8 v)
> > +{
> > +	u8 r = 0;
> > +	int i;
> > +
> > +	for (i = 0; i < BITS_PER_BYTE; i++) {
> > +		r |= (u8)((v & BIT(1)) << (BITS_PER_BYTE - 1 - i));
> 
> Previously you had 0x1 as mask so BIT(0) should be used here instead
> of
> BIT(1) which is (1 << 1) == 0x2.
> 
> But instead of this function you can use existing bitrev8() from
> <linux/bitrev.h> for free.

Thanks for the knowledge sharing!
Yes, better to use the existing implementation!

> 
> > +		v >>= 1;
> > +	}
> > +
> > +	return r;
> > +}
> > +
> > +static u8 _ice_bit_rev_u16(u16 v, int len)
> > +{
> > +	u16 r = 0;
> > +	int i;
> > +
> > +	for (i = 0; i < len; i++) {
> > +		r |= (u16)((v & BIT(1)) << (len - 1 - i));
> > +		v >>= 1;
> > +	}
> > +
> > +	return r;
> > +}
> 
> A little bit weird... you are reversing 16bit value but returning just 8
> bits value (u8). Is it correct?
> 
> Anyway you can implement that function using bitrev16() this way:
> 
> static inline u16 _ice_bit_rev_u16(u16 v, int len)
> {
> 	return bitrev16(v) >> (BITS_PER_TYPE(v) - len);
> }

Yes, it's more likely to be a typo!
Thanks for the knowledge and guidance!

> 
> > +
> > +static u32 _ice_bit_rev_u32(u32 v, int len)
> > +{
> > +	u32 r = 0;
> > +	int i;
> > +
> > +	for (i = 0; i < len; i++) {
> > +		r |= (u32)((v & BIT(1)) << (len - 1 - i));
> > +		v >>= 1;
> > +	}
> > +
> > +	return r;
> > +}
> 
> Similarly:
> 
> static inline u32 _ice_bit_rev_u32(u32 v, int len)
> {
> 	return bitrev32(v) >> (BITS_PER_TYPE(v) - len);
> }

Thanks for the knowledge and guidance!

> 
> > +
> > +static u32 _ice_hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
> > +{
> > +	u8 b[ICE_NPKB_HV_SIZE];
> > +	u64 d64, msk;
> > +	int i;
> > +
> > +	int offset = ICE_GPR_HV_IDX + start / BITS_PER_WORD;
> > +
> > +	memcpy(b, &rt->gpr[offset], ICE_NPKB_HV_SIZE);
> 
> If you have start > 0 then you will copy data from area after rt->gpr
> that could be unsafe.
> 
> > +
> > +	for (i = 0; i < ICE_NPKB_HV_SIZE; i++)
> > +		b[i] = _ice_bit_rev_u8(b[i]);
> > +
> > +	d64 = *(u64 *)b;
> 
> Additionally you are interested only in 8 bytes (u64) so it does not
> make sense to copy and bit-reverse whole NPKB_HV array (32 bytes).
> 
> > +	msk = BITMAP_MASK(len);
> > +
> > +	return _ice_bit_rev_u32((u32)((d64 >> (start %
> BITS_PER_WORD)) & msk),
> > +				len);
> 
> Mask is not needed here... _ice_bit_rev_u32() removes unneeded bits
> by
> shifting.
> 
> Whole function could look like (with comments that should be
> removed -
> just FYI):
> 
> static u32 _ice_hv_bit_sel(struct ice_parser_rt *rt, int start, int len)
> {
> 	int offset;
> 	u32 buf[2];
> 	u64 val;
> 
> 	/* compute offset in gpr array */
> 	offset = ICE_GPR_HV_IDX + start / BITS_PER_TYPE(u16);
> 
> 	/* copy just 8 bytes */
> 	memcpy(b, &rt->gpr[offset], sizeof(buf));
> 
> 	/* bit-reverse 4 bytes at once - 2 times as we have 2 u32s */
> 	buf[0] = bitrev8x4(buf[0]);
> 	buf[1] = bitrev8x4(buf[1]);
> 
> 	/* load as 64 bit value */
> 	val = *(u64 *)buf;
> 
> 	/* shift away unwanted bits */
> 	val >>= start % BITS_PER_TYPE(u16);
> 
> 	/* return bit-reversed 'len' bits */
> 	return _ice_bit_rev_u32(val, len);
> }

Thanks for the knowledge and guidance!

> 
> > +}
> > +
> > +static u32 _ice_pk_build(struct ice_parser_rt *rt,
> > +			 struct ice_np_keybuilder *kb)
> > +{
> > +	if (kb->opc == ICE_NPKB_OPC_EXTRACT)
> > +		return _ice_hv_bit_sel(rt, kb->start_reg0, kb->len_reg1);
> > +	else if (kb->opc == ICE_NPKB_OPC_BUILD)
> > +		return rt->gpr[kb->start_reg0] |
> > +		       ((u32)rt->gpr[kb->len_reg1] << BITS_PER_WORD);
> > +	else if (kb->opc == ICE_NPKB_OPC_BYPASS)
> > +		return 0;
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unsupported
> opc %d\n", kb->opc);
> > +	return U32_MAX;
> > +}
> > +
> > +static bool _ice_flag_get(struct ice_parser_rt *rt, int index)
> > +{
> > +	int y = index / ICE_GPR_FLG_SIZE;
> > +	int x = index % ICE_GPR_FLG_SIZE;
> > +
> > +	return (rt->gpr[ICE_GPR_FLG_IDX + y] & (u16)BIT(x)) != 0;
> > +}
> > +
> > +static void _ice_imem_pgk_init(struct ice_parser_rt *rt,
> > +			       struct ice_imem_item *imem)
> > +{
> > +	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
> > +	rt->pg_key.next_proto = _ice_pk_build(rt, &imem->np_kb);
> > +
> > +	if (imem->pg_kb.flag0_ena)
> > +		rt->pg_key.flag0 = _ice_flag_get(rt, imem-
> >pg_kb.flag0_idx);
> > +	if (imem->pg_kb.flag1_ena)
> > +		rt->pg_key.flag1 = _ice_flag_get(rt, imem-
> >pg_kb.flag1_idx);
> > +	if (imem->pg_kb.flag2_ena)
> > +		rt->pg_key.flag2 = _ice_flag_get(rt, imem-
> >pg_kb.flag2_idx);
> > +	if (imem->pg_kb.flag3_ena)
> > +		rt->pg_key.flag3 = _ice_flag_get(rt, imem-
> >pg_kb.flag3_idx);
> > +
> > +	rt->pg_key.alu_reg = rt->gpr[imem->pg_kb.alu_reg_idx];
> > +	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse
> Graph Key: node_id(%d),flag0(%d), flag1(%d), flag2(%d), flag3(%d),
> boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
> > +		  rt->pg_key.node_id,
> > +		  rt->pg_key.flag0,
> > +		  rt->pg_key.flag1,
> > +		  rt->pg_key.flag2,
> > +		  rt->pg_key.flag3,
> > +		  rt->pg_key.boost_idx,
> > +		  rt->pg_key.alu_reg,
> > +		  rt->pg_key.next_proto);
> > +}
> > +
> > +static void _ice_imem_alu0_set(struct ice_parser_rt *rt,
> > +			       struct ice_imem_item *imem)
> > +{
> > +	rt->alu0 = &imem->alu0;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from
> imem pc %d\n",
> > +		  imem->idx);
> > +}
> > +
> > +static void _ice_imem_alu1_set(struct ice_parser_rt *rt,
> > +			       struct ice_imem_item *imem)
> > +{
> > +	rt->alu1 = &imem->alu1;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from
> imem pc %d\n",
> > +		  imem->idx);
> > +}
> > +
> > +static void _ice_imem_alu2_set(struct ice_parser_rt *rt,
> > +			       struct ice_imem_item *imem)
> > +{
> > +	rt->alu2 = &imem->alu2;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from
> imem pc %d\n",
> > +		  imem->idx);
> > +}
> > +
> > +static void _ice_imem_pgp_set(struct ice_parser_rt *rt,
> > +			      struct ice_imem_item *imem)
> > +{
> > +	rt->pg_pri = imem->pg_pri;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d
> from imem pc %d\n",
> > +		  rt->pg_pri, imem->idx);
> > +}
> > +
> > +static void _ice_bst_pgk_init(struct ice_parser_rt *rt,
> > +			      struct ice_bst_tcam_item *bst)
> > +{
> > +	memset(&rt->pg_key, 0, sizeof(rt->pg_key));
> > +	rt->pg_key.boost_idx = bst->hit_idx_grp;
> > +	rt->pg_key.next_proto = _ice_pk_build(rt, &bst->np_kb);
> > +
> > +	if (bst->pg_kb.flag0_ena)
> > +		rt->pg_key.flag0 = _ice_flag_get(rt, bst-
> >pg_kb.flag0_idx);
> > +	if (bst->pg_kb.flag1_ena)
> > +		rt->pg_key.flag1 = _ice_flag_get(rt, bst-
> >pg_kb.flag1_idx);
> > +	if (bst->pg_kb.flag2_ena)
> > +		rt->pg_key.flag2 = _ice_flag_get(rt, bst-
> >pg_kb.flag2_idx);
> > +	if (bst->pg_kb.flag3_ena)
> > +		rt->pg_key.flag3 = _ice_flag_get(rt, bst-
> >pg_kb.flag3_idx);
> > +
> > +	rt->pg_key.alu_reg = rt->gpr[bst->pg_kb.alu_reg_idx];
> > +	rt->pg_key.node_id = rt->gpr[ICE_GPR_NN_IDX];
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Generate Parse
> Graph Key: node_id(%d),flag0(%d), flag1(%d), flag2(%d), flag3(%d),
> boost_idx(%d), alu_reg(0x%04x), next_proto(0x%08x)\n",
> > +		  rt->pg_key.node_id,
> > +		  rt->pg_key.flag0,
> > +		  rt->pg_key.flag1,
> > +		  rt->pg_key.flag2,
> > +		  rt->pg_key.flag3,
> > +		  rt->pg_key.boost_idx,
> > +		  rt->pg_key.alu_reg,
> > +		  rt->pg_key.next_proto);
> > +}
> > +
> > +static void _ice_bst_alu0_set(struct ice_parser_rt *rt,
> > +			      struct ice_bst_tcam_item *bst)
> > +{
> > +	rt->alu0 = &bst->alu0;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU0 from
> boost address %d\n",
> > +		  bst->addr);
> > +}
> > +
> > +static void _ice_bst_alu1_set(struct ice_parser_rt *rt,
> > +			      struct ice_bst_tcam_item *bst)
> > +{
> > +	rt->alu1 = &bst->alu1;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU1 from
> boost address %d\n",
> > +		  bst->addr);
> > +}
> > +
> > +static void _ice_bst_alu2_set(struct ice_parser_rt *rt,
> > +			      struct ice_bst_tcam_item *bst)
> > +{
> > +	rt->alu2 = &bst->alu2;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load ALU2 from
> boost address %d\n",
> > +		  bst->addr);
> > +}
> > +
> > +static void _ice_bst_pgp_set(struct ice_parser_rt *rt,
> > +			     struct ice_bst_tcam_item *bst)
> > +{
> > +	rt->pg_pri = bst->pg_pri;
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load PG priority %d
> from boost address %d\n",
> > +		  rt->pg_pri, bst->addr);
> > +}
> > +
> > +static struct ice_pg_cam_item *_ice_pg_cam_match(struct
> ice_parser_rt *rt)
> > +{
> > +	struct ice_parser *psr = rt->psr;
> > +	struct ice_pg_cam_item *item;
> > +
> > +	item = ice_pg_cam_match(psr->pg_cam_table,
> ICE_PG_CAM_TABLE_SIZE,
> > +				&rt->pg_key);
> > +	if (item)
> > +		return item;
> > +
> > +	item = ice_pg_cam_match(psr->pg_sp_cam_table,
> ICE_PG_SP_CAM_TABLE_SIZE,
> > +				&rt->pg_key);
> > +	return item;
> > +}
> > +
> > +static struct ice_pg_nm_cam_item *_ice_pg_nm_cam_match(struct
> ice_parser_rt *rt)
> > +{
> > +	struct ice_parser *psr = rt->psr;
> > +	struct ice_pg_nm_cam_item *item;
> > +
> > +	item = ice_pg_nm_cam_match(psr->pg_nm_cam_table,
> > +				   ICE_PG_NM_CAM_TABLE_SIZE, &rt-
> >pg_key);
> > +
> > +	if (item)
> > +		return item;
> > +
> > +	item = ice_pg_nm_cam_match(psr->pg_nm_sp_cam_table,
> > +				   ICE_PG_NM_SP_CAM_TABLE_SIZE,
> > +				   &rt->pg_key);
> > +	return item;
> > +}
> > +
> > +static void _ice_gpr_add(struct ice_parser_rt *rt, int idx, u16 val)
> > +{
> > +	rt->pu.gpr_val_upd[idx] = true;
> > +	rt->pu.gpr_val[idx] = val;
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for
> register %d value %d\n",
> > +		  idx, val);
> > +}
> > +
> > +static void _ice_pg_exe(struct ice_parser_rt *rt)
> > +{
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing
> ParseGraph action ...\n");
> > +
> > +	_ice_gpr_add(rt, ICE_GPR_NP_IDX, rt->action->next_pc);
> > +	_ice_gpr_add(rt, ICE_GPR_NN_IDX, rt->action->next_node);
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing
> ParseGraph action done.\n");
> > +}
> > +
> > +static void _ice_flg_add(struct ice_parser_rt *rt, int idx, bool val)
> > +{
> > +	rt->pu.flg_msk |= BIT(idx);
> > +	if (val)
> > +		rt->pu.flg_val |= BIT(idx);
> > +	else
> > +		rt->pu.flg_val &= ~BIT(idx);
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for
> flag %d value %d\n",
> > +		  idx, val);
> > +}
> > +
> > +static void _ice_flg_update(struct ice_parser_rt *rt, struct ice_alu
> *alu)
> > +{
> > +	int i;
> > +
> > +	if (!alu->dedicate_flags_ena)
> > +		return;
> > +
> > +	if (alu->flags_extr_imm)
> > +		for (i = 0; i < alu->dst_len; i++)
> > +			_ice_flg_add(rt, alu->dst_start + i,
> > +				     (alu->flags_start_imm & BIT(i)) != 0);
> > +	else
> > +		for (i = 0; i < alu->dst_len; i++)
> > +			_ice_flg_add(rt, alu->dst_start + i,
> > +				     _ice_hv_bit_sel(rt,
> > +						     alu-
> >flags_start_imm + i,
> > +						     1) != 0);
> > +}
> > +
> > +static void _ice_po_update(struct ice_parser_rt *rt, struct ice_alu
> *alu)
> > +{
> > +	if (alu->proto_offset_opc == ICE_PO_OFF_HDR_ADD)
> > +		rt->po = (u16)(rt->gpr[ICE_GPR_HO_IDX] + alu-
> >proto_offset);
> > +	else if (alu->proto_offset_opc == ICE_PO_OFF_HDR_SUB)
> > +		rt->po = (u16)(rt->gpr[ICE_GPR_HO_IDX] - alu-
> >proto_offset);
> > +	else if (alu->proto_offset_opc == ICE_PO_OFF_REMAIN)
> > +		rt->po = rt->gpr[ICE_GPR_HO_IDX];
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Update Protocol
> Offset = %d\n",
> > +		  rt->po);
> > +}
> > +
> > +static u16 _ice_reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
> > +			    int start, int len)
> > +{
> > +	u8 b[ICE_ALU_REG_SIZE];
> > +	u8 v[ICE_ALU_REG_SIZE];
> > +	u32 d32, msk;
> > +	int i;
> > +
> > +	memcpy(b, &rt->gpr[reg_idx + start / BITS_PER_WORD],
> ICE_ALU_REG_SIZE);
> > +
> > +	for (i = 0; i < ICE_ALU_REG_SIZE; i++)
> > +		v[i] = _ice_bit_rev_u8(b[i]);
> > +
> > +	d32 = *(u32 *)v;
> > +	msk = BITMAP_MASK(len);
> > +
> > +	return _ice_bit_rev_u16((u16)((d32 >> (start %
> BITS_PER_WORD)) & msk),
> > +				len);
> > +}
> 
> Similarly but more simplier than for _ice_hv_bit_sel():
> 
> static u16 _ice_reg_bit_sel(struct ice_parser_rt *rt, int reg_idx,
> 			    int start, int len)
> {
> 	int offset;
> 	u32 val;
> 
> 	/* compute offset in gpr array */
> 	offset = ICE_GPR_HV_IDX + start / BITS_PER_TYPE(u16);
> 
> #ifndef MORE_SIMPLIER
> 	/* copy just 4 bytes - single u32 */
> 	memcpy(&val, &rt->gpr[offset], sizeof(val));
> 
> 	/* bit-reverse 4 bytes at once */
> 	val = bitrev8x4(val);
> #else
> 	/* the same in one step but more ugly */
> 	val = bitrev8x4(*(u32 *)&rt->gpr[offset]);
> #endif
> 
> 	/* shift away unwanted bits */
> 	val >>= start % BITS_PER_TYPE(u16);
> 
> 	/* return bit-reversed 'len' bits */
> 	return _ice_bit_rev_u16(val, len);
> }

Thanks for the knowledge and guidance!

> 
> > +
> > +static void _ice_err_add(struct ice_parser_rt *rt, int idx, bool val)
> > +{
> > +	rt->pu.err_msk |= (u16)BIT(idx);
> > +	if (val)
> > +		rt->pu.flg_val |= (u64)BIT_ULL(idx);
> > +	else
> > +		rt->pu.flg_val &= ~(u64)BIT_ULL(idx);
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Pending update for
> error %d value %d\n",
> > +		  idx, val);
> > +}
> > +
> > +static void _ice_dst_reg_bit_set(struct ice_parser_rt *rt, struct
> ice_alu *alu,
> > +				 bool val)
> > +{
> > +	u16 flg_idx;
> > +
> > +	if (alu->dedicate_flags_ena) {
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "DedicatedFlagsEnable should not be enabled in opcode %d\n",
> > +			  alu->opc);
> > +		return;
> > +	}
> > +
> > +	if (alu->dst_reg_id == ICE_GPR_ERR_IDX) {
> > +		if (alu->dst_start >= ICE_PARSER_ERR_NUM) {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Invalid error %d\n",
> > +				  alu->dst_start);
> > +			return;
> > +		}
> > +		_ice_err_add(rt, alu->dst_start, val);
> > +	} else if (alu->dst_reg_id >= ICE_GPR_FLG_IDX) {
> > +		flg_idx = (u16)(((alu->dst_reg_id - ICE_GPR_FLG_IDX) <<
> 4) +
> > +				alu->dst_start);
> > +
> > +		if (flg_idx >= ICE_PARSER_FLG_NUM) {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Invalid flag %d\n",
> > +				  flg_idx);
> > +			return;
> > +		}
> > +		_ice_flg_add(rt, flg_idx, val);
> > +	} else {
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Unexpected
> Dest Register Bit set, RegisterID %d Start %d\n",
> > +			  alu->dst_reg_id, alu->dst_start);
> > +	}
> > +}
> > +
> > +static void _ice_alu_exe(struct ice_parser_rt *rt, struct ice_alu *alu)
> > +{
> > +	u16 dst, src, shift, imm;
> > +
> > +	if (alu->shift_xlate_sel) {
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "shift_xlate_sel != 0 is not expected\n");
> > +		return;
> > +	}
> > +
> > +	_ice_po_update(rt, alu);
> > +	_ice_flg_update(rt, alu);
> > +
> > +	dst = rt->gpr[alu->dst_reg_id];
> > +	src = _ice_reg_bit_sel(rt,
> > +			       alu->src_reg_id, alu->src_start, alu-
> >src_len);
> > +	shift = alu->shift_xlate_key;
> > +	imm = alu->imm;
> > +
> > +	switch (alu->opc) {
> > +	case ICE_ALU_PARK:
> > +		break;
> > +	case ICE_ALU_MOV_ADD:
> > +		dst = (u16)((src << shift) + imm);
> > +		_ice_gpr_add(rt, alu->dst_reg_id, dst);
> > +		break;
> > +	case ICE_ALU_ADD:
> > +		dst += (u16)((src << shift) + imm);
> > +		_ice_gpr_add(rt, alu->dst_reg_id, dst);
> > +		break;
> > +	case ICE_ALU_ORLT:
> > +		if (src < imm)
> > +			_ice_dst_reg_bit_set(rt, alu, true);
> > +		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
> > +		break;
> > +	case ICE_ALU_OREQ:
> > +		if (src == imm)
> > +			_ice_dst_reg_bit_set(rt, alu, true);
> > +		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
> > +		break;
> > +	case ICE_ALU_SETEQ:
> > +		if (src == imm)
> > +			_ice_dst_reg_bit_set(rt, alu, true);
> > +		else
> > +			_ice_dst_reg_bit_set(rt, alu, false);
> > +		_ice_gpr_add(rt, ICE_GPR_NP_IDX, alu->branch_addr);
> > +		break;
> > +	case ICE_ALU_MOV_XOR:
> > +		dst = (u16)((u16)(src << shift) ^ (u16)imm);
> > +		_ice_gpr_add(rt, alu->dst_reg_id, dst);
> > +		break;
> > +	default:
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Unsupported ALU instruction %d\n",
> > +			  alu->opc);
> > +		break;
> > +	}
> > +}
> > +
> > +static void _ice_alu0_exe(struct ice_parser_rt *rt)
> > +{
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing
> ALU0 ...\n");
> > +	_ice_alu_exe(rt, rt->alu0);
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU0
> done.\n");
> > +}
> > +
> > +static void _ice_alu1_exe(struct ice_parser_rt *rt)
> > +{
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing
> ALU1 ...\n");
> > +	_ice_alu_exe(rt, rt->alu1);
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU1
> done.\n");
> > +}
> > +
> > +static void _ice_alu2_exe(struct ice_parser_rt *rt)
> > +{
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing
> ALU2 ...\n");
> > +	_ice_alu_exe(rt, rt->alu2);
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Executing ALU2
> done.\n");
> > +}
> > +
> > +static void _ice_pu_exe(struct ice_parser_rt *rt)
> > +{
> > +	struct ice_gpr_pu *pu = &rt->pu;
> > +	int i;
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating
> Registers ...\n");
> > +
> > +	for (i = 0; i < ICE_PARSER_GPR_NUM; i++) {
> > +		if (pu->gpr_val_upd[i])
> > +			_ice_rt_gpr_set(rt, i, pu->gpr_val[i]);
> > +	}
> > +
> > +	for (i = 0; i < ICE_PARSER_FLG_NUM; i++) {
> > +		if (pu->flg_msk & BIT(i))
> > +			_ice_rt_flag_set(rt, i, pu->flg_val & BIT(i));
> > +	}
> > +
> > +	for (i = 0; i < ICE_PARSER_ERR_NUM; i++) {
> > +		if (pu->err_msk & BIT(1))
> > +			_ice_rt_err_set(rt, i, pu->err_val & BIT(i));
> > +	}
> > +
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Updating Registers
> done.\n");
> > +}
> > +
> > +static void _ice_alu_pg_exe(struct ice_parser_rt *rt)
> > +{
> > +	memset(&rt->pu, 0, sizeof(rt->pu));
> > +
> > +	if (rt->pg_pri == ICE_PG_P0) {
> > +		_ice_pg_exe(rt);
> > +		_ice_alu0_exe(rt);
> > +		_ice_alu1_exe(rt);
> > +		_ice_alu2_exe(rt);
> > +	} else if (rt->pg_pri == ICE_PG_P1) {
> > +		_ice_alu0_exe(rt);
> > +		_ice_pg_exe(rt);
> > +		_ice_alu1_exe(rt);
> > +		_ice_alu2_exe(rt);
> > +	} else if (rt->pg_pri == ICE_PG_P2) {
> > +		_ice_alu0_exe(rt);
> > +		_ice_alu1_exe(rt);
> > +		_ice_pg_exe(rt);
> > +		_ice_alu2_exe(rt);
> > +	} else if (rt->pg_pri == ICE_PG_P3) {
> > +		_ice_alu0_exe(rt);
> > +		_ice_alu1_exe(rt);
> > +		_ice_alu2_exe(rt);
> > +		_ice_pg_exe(rt);
> > +	}
> > +
> > +	_ice_pu_exe(rt);
> > +
> > +	if (rt->action->ho_inc == 0)
> > +		return;
> > +
> > +	if (rt->action->ho_polarity)
> > +		_ice_rt_ho_set(rt,
> > +			       rt->gpr[ICE_GPR_HO_IDX] + rt->action-
> >ho_inc);
> > +	else
> > +		_ice_rt_ho_set(rt,
> > +			       rt->gpr[ICE_GPR_HO_IDX] - rt->action-
> >ho_inc);
> > +}
> > +
> > +static void _ice_proto_off_update(struct ice_parser_rt *rt)
> > +{
> > +	struct ice_parser *psr = rt->psr;
> > +
> > +	if (rt->action->is_pg) {
> > +		struct ice_proto_grp_item *proto_grp =
> > +			&psr->proto_grp_table[rt->action->proto_id];
> > +		u16 po;
> > +		int i;
> > +
> > +		for (i = 0; i < ICE_PROTO_COUNT_PER_GRP; i++) {
> > +			struct ice_proto_off *entry = &proto_grp-
> >po[i];
> > +
> > +			if (entry->proto_id == U8_MAX)
> > +				break;
> > +
> > +			if (!entry->polarity)
> > +				po = (u16)(rt->po + entry->offset);
> > +			else
> > +				po = (u16)(rt->po - entry->offset);
> > +
> > +			rt->protocols[entry->proto_id]	= true;
> > +			rt->offsets[entry->proto_id]	= po;
> > +
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set
> Protocol %d at offset %d\n",
> > +				  entry->proto_id, po);
> > +		}
> > +	} else {
> > +		rt->protocols[rt->action->proto_id]	= true;
> > +		rt->offsets[rt->action->proto_id]	= rt->po;
> > +
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set
> Protocol %d at offset %d\n",
> > +			  rt->action->proto_id, rt->po);
> > +	}
> > +}
> > +
> > +static void _ice_marker_set(struct ice_parser_rt *rt, int idx)
> > +{
> > +	int x = idx / BITS_PER_BYTE;
> > +	int y = idx % BITS_PER_BYTE;
> > +
> > +	rt->markers[x] |= (u8)BIT(y);
> > +}
> > +
> > +static void _ice_marker_update(struct ice_parser_rt *rt)
> > +{
> > +	struct ice_parser *psr = rt->psr;
> > +
> > +	if (rt->action->is_mg) {
> > +		struct ice_mk_grp_item *mk_grp =
> > +			&psr->mk_grp_table[rt->action->marker_id];
> > +		int i;
> > +
> > +		for (i = 0; i < ICE_MARKER_ID_NUM; i++) {
> > +			u8 marker = mk_grp->markers[i];
> > +
> > +			if (marker == (ICE_MARKER_ID_SIZE *
> BITS_PER_BYTE - 1))
> > +				break;
> > +
> > +			_ice_marker_set(rt, marker);
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set
> Marker %d\n",
> > +				  marker);
> > +		}
> > +	} else {
> > +		if (rt->action->marker_id !=
> > +		    (ICE_MARKER_ID_SIZE * BITS_PER_BYTE - 1))
> > +			_ice_marker_set(rt, rt->action->marker_id);
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Set
> Marker %d\n",
> > +			  rt->action->marker_id);
> > +	}
> > +}
> > +
> > +static u16 _ice_ptype_resolve(struct ice_parser_rt *rt)
> > +{
> > +	struct ice_parser *psr = rt->psr;
> > +	struct ice_ptype_mk_tcam_item *item;
> > +
> > +	item = ice_ptype_mk_tcam_match(psr->ptype_mk_tcam_table,
> > +				       rt->markers, ICE_MARKER_ID_SIZE);
> > +	if (item)
> > +		return item->ptype;
> > +
> > +	return U16_MAX;
> > +}
> > +
> > +static void _ice_proto_off_resolve(struct ice_parser_rt *rt,
> > +				   struct ice_parser_result *rslt)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < ICE_PO_PAIR_SIZE - 1; i++) {
> > +		if (rt->protocols[i]) {
> > +			rslt->po[rslt->po_num].proto_id	= (u8)i;
> > +			rslt->po[rslt->po_num].offset	= rt->offsets[i];
> > +			rslt->po_num++;
> > +		}
> > +	}
> > +}
> > +
> > +static void _ice_result_resolve(struct ice_parser_rt *rt,
> > +				struct ice_parser_result *rslt)
> > +{
> > +	struct ice_parser *psr = rt->psr;
> > +
> > +	memset(rslt, 0, sizeof(*rslt));
> > +
> > +	rslt->ptype = _ice_ptype_resolve(rt);
> > +
> > +	memcpy(&rslt->flags_psr, &rt->gpr[ICE_GPR_FLG_IDX],
> > +	       ICE_PARSER_FLAG_PSR_SIZE);
> > +	rslt->flags_pkt	= ice_flg_redirect(psr->flg_rd_table, rslt-
> >flags_psr);
> > +	rslt->flags_sw	= ice_xlt_kb_flag_get(psr->xlt_kb_sw, rslt-
> >flags_pkt);
> > +	rslt->flags_fd	= ice_xlt_kb_flag_get(psr->xlt_kb_fd, rslt-
> >flags_pkt);
> > +	rslt->flags_rss	= ice_xlt_kb_flag_get(psr->xlt_kb_rss, rslt-
> >flags_pkt);
> > +
> > +	_ice_proto_off_resolve(rt, rslt);
> > +}
> > +
> >   /**
> >    * ice_parser_rt_execute - parser execution routine
> >    * @rt: pointer to the parser runtime
> > @@ -88,5 +775,103 @@ void ice_parser_rt_pktbuf_set(struct
> ice_parser_rt *rt, const u8 *pkt_buf,
> >   int ice_parser_rt_execute(struct ice_parser_rt *rt,
> >   			  struct ice_parser_result *rslt)
> >   {
> > -	return ICE_ERR_NOT_IMPL;
> > +	struct ice_pg_nm_cam_item *pg_nm_cam;
> > +	struct ice_parser *psr = rt->psr;
> > +	struct ice_pg_cam_item *pg_cam;
> > +	int status = 0;
> > +	u16 node;
> > +	u16 pc;
> > +
> > +	node = rt->gpr[ICE_GPR_NN_IDX];
> > +	ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Start with
> Node: %d\n", node);
> > +
> > +	while (true) {
> > +		struct ice_bst_tcam_item *bst;
> > +		struct ice_imem_item *imem;
> > +
> > +		pc = rt->gpr[ICE_GPR_NP_IDX];
> > +		imem = &psr->imem_table[pc];
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Load imem
> at pc: %d\n",
> > +			  pc);
> > +
> > +		_ice_bst_key_init(rt, imem);
> > +		bst = ice_bst_tcam_match(psr->bst_tcam_table, rt-
> >bst_key);
> > +
> > +		if (!bst) {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "No
> Boost TCAM Match\n");
> > +			_ice_imem_pgk_init(rt, imem);
> > +			_ice_imem_alu0_set(rt, imem);
> > +			_ice_imem_alu1_set(rt, imem);
> > +			_ice_imem_alu2_set(rt, imem);
> > +			_ice_imem_pgp_set(rt, imem);
> > +		} else {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Boost TCAM Match address: %d\n",
> > +				  bst->addr);
> > +			if (imem->b_m.pg) {
> > +				_ice_bst_pgk_init(rt, bst);
> > +				_ice_bst_pgp_set(rt, bst);
> > +			} else {
> > +				_ice_imem_pgk_init(rt, imem);
> > +				_ice_imem_pgp_set(rt, imem);
> > +			}
> > +
> > +			if (imem->b_m.alu0)
> > +				_ice_bst_alu0_set(rt, bst);
> > +			else
> > +				_ice_imem_alu0_set(rt, imem);
> > +
> > +			if (imem->b_m.alu1)
> > +				_ice_bst_alu1_set(rt, bst);
> > +			else
> > +				_ice_imem_alu1_set(rt, imem);
> > +
> > +			if (imem->b_m.alu2)
> > +				_ice_bst_alu2_set(rt, bst);
> > +			else
> > +				_ice_imem_alu2_set(rt, imem);
> > +		}
> > +
> > +		rt->action = NULL;
> > +		pg_cam = _ice_pg_cam_match(rt);
> > +		if (!pg_cam) {
> > +			pg_nm_cam = _ice_pg_nm_cam_match(rt);
> > +			if (pg_nm_cam) {
> > +				ice_debug(rt->psr->hw,
> ICE_DBG_PARSER, "Match ParseGraph Nomatch CAM Address %d\n",
> > +					  pg_nm_cam->idx);
> > +				rt->action = &pg_nm_cam->action;
> > +			}
> > +		} else {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Match ParseGraph CAM Address %d\n",
> > +				  pg_cam->idx);
> > +			rt->action = &pg_cam->action;
> > +		}
> > +
> > +		if (!rt->action) {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Failed to match ParseGraph CAM, stop parsing.\n");
> > +			status = -EINVAL;
> > +			break;
> > +		}
> > +
> > +		_ice_alu_pg_exe(rt);
> > +		_ice_marker_update(rt);
> > +		_ice_proto_off_update(rt);
> > +
> > +		ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Go to
> node %d\n",
> > +			  rt->action->next_node);
> > +
> > +		if (rt->action->is_last_round) {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER, "Last
> Round in ParseGraph Action, stop parsing.\n");
> > +			break;
> > +		}
> > +
> > +		if (rt->gpr[ICE_GPR_HO_IDX] >= rt->pkt_len) {
> > +			ice_debug(rt->psr->hw, ICE_DBG_PARSER,
> "Header Offset %d is larger than packet len %d, stop parsing\n",
> > +				  rt->gpr[ICE_GPR_HO_IDX], rt-
> >pkt_len);
> > +			break;
> > +		}
> > +	}
> > +
> > +	_ice_result_resolve(rt, rslt);
> > +
> > +	return status;
> >   }
> > diff --git a/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> > index 3f60caefaf8a..2e71c3dd217b 100644
> > --- a/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> > +++ b/drivers/net/ethernet/intel/ice/ice_parser_rt.h
> > @@ -20,6 +20,29 @@ struct ice_parser_ctx;
> >   #define ICE_PARSER_MAX_PKT_LEN	504
> >   #define ICE_PARSER_PKT_REV	32
> >   #define ICE_PARSER_GPR_NUM	128
> > +#define ICE_PARSER_FLG_NUM	64
> > +#define ICE_PARSER_ERR_NUM	16
> > +#define ICE_BST_KEY_SIZE	10
> > +#define ICE_MARKER_ID_SIZE	9
> > +#define ICE_MARKER_ID_NUM	8
> > +#define ICE_PO_PAIR_SIZE	256
> > +
> > +struct ice_gpr_pu {
> > +	/* array of flags to indicate if GRP needs to be updated */
> > +	bool gpr_val_upd[ICE_PARSER_GPR_NUM];
> > +	u16 gpr_val[ICE_PARSER_GPR_NUM];
> > +	u64 flg_msk;
> > +	u64 flg_val;
> > +	u16 err_msk;
> > +	u16 err_val;
> > +};
> > +
> > +enum ice_pg_pri {
> > +	ICE_PG_P0	= 0,
> > +	ICE_PG_P1	= 1,
> > +	ICE_PG_P2	= 2,
> > +	ICE_PG_P3	= 3,
> > +};
> >
> >   struct ice_parser_rt {
> >   	struct ice_parser *psr;
> > @@ -27,6 +50,17 @@ struct ice_parser_rt {
> >   	u8 pkt_buf[ICE_PARSER_MAX_PKT_LEN +
> ICE_PARSER_PKT_REV];
> >   	u16 pkt_len;
> >   	u16 po;
> > +	u8 bst_key[ICE_BST_KEY_SIZE];
> > +	struct ice_pg_cam_key pg_key;
> > +	struct ice_alu *alu0;
> > +	struct ice_alu *alu1;
> > +	struct ice_alu *alu2;
> > +	struct ice_pg_cam_action *action;
> > +	u8 pg_pri;
> > +	struct ice_gpr_pu pu;
> > +	u8 markers[ICE_MARKER_ID_SIZE];
> > +	bool protocols[ICE_PO_PAIR_SIZE];
> > +	u16 offsets[ICE_PO_PAIR_SIZE];
> >   };
> >
> >   void ice_parser_rt_reset(struct ice_parser_rt *rt);

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

