Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C4BE6F3BE3
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 May 2023 03:47:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 54D7C416D2;
	Tue,  2 May 2023 01:47:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 54D7C416D2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1682992067;
	bh=nnkrgzmeTqtGOYH7inQuTI83BN8H9Fn8Wtt37iflAjA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=H4z+8xSWx1YIB3RTVly3YYLC7QLA/TD0q621jk1YHJfW8tnmweVzav1AYxoayjDTG
	 H28DeO/cur4Ybh/OAzjcMUlEkZYCRn3F3mihoTi69+Tj0LGYMcMo5ldf5gbzr1cpFP
	 vEO0l4qD47E25byTr+bYmH3Lp7Jl/n2oy2XptVnZH3zALxEsSpnI0CKFdL2Ftgtdhn
	 LWDPwI9PpagnquZgdjxS05XQr1jegwm79ocFrWdXAJhCpG3/SUMuRYVgWN8N/t89Xi
	 ZboETIUYfh+30w17jhv5Swm5IivnpSBBgo8cKoK9/Ywlm9WYYtzt2dnh6JfTw5wDSH
	 RNlDqdT0mqfzw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tDiMrUD09ktN; Tue,  2 May 2023 01:47:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id E2878416D0;
	Tue,  2 May 2023 01:47:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E2878416D0
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 28F251BF859
 for <intel-wired-lan@osuosl.org>; Tue,  2 May 2023 01:47:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E878860C1F
 for <intel-wired-lan@osuosl.org>; Tue,  2 May 2023 01:47:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E878860C1F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mu-YUYbuB94g for <intel-wired-lan@osuosl.org>;
 Tue,  2 May 2023 01:47:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBE1160C0E
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CBE1160C0E
 for <intel-wired-lan@osuosl.org>; Tue,  2 May 2023 01:47:39 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="413718741"
X-IronPort-AV: E=Sophos;i="5.99,242,1677571200"; d="scan'208";a="413718741"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2023 18:47:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10697"; a="765571764"
X-IronPort-AV: E=Sophos;i="5.99,242,1677571200"; d="scan'208";a="765571764"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP; 01 May 2023 18:47:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 1 May 2023 18:47:38 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Mon, 1 May 2023 18:47:37 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Mon, 1 May 2023 18:47:37 -0700
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Mon, 1 May 2023 18:47:37 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kzoYHdooIXZFFXjR4XHiN9KGQaeAJPKhwAIG5+VwrDcLmI1Ezjmbi5ah6aHRa/ZE7zpzj2/PEzFUtExy6O18OmXzTYg/gb20/SmNCHw4Gna9/ZlGNgMkUDPybZAoD3YCtyMNQOVlvJgFG6lsp6Zu4HWCHUfPU/yoAUvTfNdXDSU/qAQgppeVCYDLmle+WCiBnSfbp3GYqBa48p2tguqTu0bVHDQIrDMkslQ+x1e5QibX83FD+OLWxpBgfu1olC738TvsMA4YZWAdh2Z+e/gF9S+TrskhuI59cgl9RrseVWkxY4JNhD50UmFBAyEelEgpVB15ROpicjWaahXZN4uhLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TgrWQQ4AjzSDo8Z2mIV2XRILdIvHPQwOCgr0XmRok5s=;
 b=az6m/mw1E5EYLpC0KlxwdGysKJzSH0eVJVVQDKQbrC1IOJr26lCJAeHMeuvGBwzwX307WwWS/9AyZ/+V8y403IxaIFKNr2bv0x0B1xL2e9RmuMnwXkRhbBpy8e/FxBMQO4zgZBAj1Il3d7CuR0G3LrfAM+9FAU6bEEs8nONR/0A8gm9dMI65ykih6vClZTsDP36vG4xv/w7+wJIB8xSsW0Mboz8y8UYEZyQAUycb1teYQQlswjMNvx3QZwjZZMlwCrlP4FQqwdOueuLZJEHfrPCnbd9y7RPH6Wf8UCwde4Y9aN8nx6svWTHSk7QrAOrO+B73X39HOlvCxMw7lxnQdw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com (2603:10b6:a03:459::14)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6340.31; Tue, 2 May
 2023 01:47:31 +0000
Received: from SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8]) by SJ1PR11MB6180.namprd11.prod.outlook.com
 ([fe80::748:8cea:e1b3:88f8%6]) with mapi id 15.20.6340.030; Tue, 2 May 2023
 01:47:30 +0000
From: "Zulkifli, Muhammad Husaini" <muhammad.husaini.zulkifli@intel.com>
To: Jakub Kicinski <kuba@kernel.org>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>
Thread-Topic: [PATCH net-next v2] igc: Add TransmissionOverrun counter
Thread-Index: AQHZbDpn2JK3jVhflUSI5puiu0TQs68xyOCAgAAHwwCAFIX2IA==
Date: Tue, 2 May 2023 01:47:30 +0000
Message-ID: <SJ1PR11MB6180117EC9550B1993944DE7B86F9@SJ1PR11MB6180.namprd11.prod.outlook.com>
References: <20230411055543.24177-1-muhammad.husaini.zulkifli@intel.com>
 <84acb1a0-f51b-cd2d-d42c-5133767a6698@intel.com>
 <20230418171904.2d01642c@kernel.org>
In-Reply-To: <20230418171904.2d01642c@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6180:EE_|CO1PR11MB5185:EE_
x-ms-office365-filtering-correlation-id: c719e372-46ef-44e7-e9d0-08db4aaf311b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +xkgnsjo9Hjh9zEt6idiIqCGcljY+vkmbxMOWycYKOIWnyIKXnvYUMkylIlZBEAtHPQRP5DlTuSVwHMNwscZocjpu1/E3iqoRMxgRXcpihoQGsyC4jjVYF6sFhlYSVK4L/nwyGyalK3/IWybe5AHuDpyO2rN9Yj2vI4lRzHKSS9bFh+jMCYA7aXTxh51u5TtSaewvdWl6lLcZlSGTl8G4TCtVkL3LodaXsr17Do2LiMySb8VWvmJwH9FcP3NEnjJM7Yz0AsM1P8T6Q0po0hLqpSSWChWQOlkot18Q11Dz4GQFa4tsIobjJ90bYxU2hfDq+QhQ13brZM/42zgEJ7XfuvmJjF/8mY1GVk4a7AYfnuPrjLN2pmm2oGRS8YNdlzOJq0Ei8M2SrH1tT64e8J1jrlxC+yO3uERO0Hj12UC9b/GBmARXOZSFQbpMoUSw5xOECyG/9V505hw5Cehi7okSVgHlvg+vwtaPCJrIJgZRGmmtIH84NOPOetYSCF+Q89njdwfiFMakIF+OhFGRnhloDsCY3TXKhwpZGRpKu7oMDwV4d5UK9ssVBHEqj+Y00aP4+mWDqjeoxwK5SL0u1L9Mnauxn+TLm6jP/b+Ggt1wo31Q7OUhZkR0ACITGbuxARW
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6180.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(136003)(346002)(39860400002)(396003)(366004)(451199021)(38100700002)(38070700005)(41300700001)(122000001)(52536014)(5660300002)(8936002)(8676002)(33656002)(2906002)(86362001)(55016003)(7696005)(71200400001)(26005)(6506007)(9686003)(54906003)(478600001)(53546011)(83380400001)(186003)(76116006)(66946007)(66556008)(66476007)(66446008)(64756008)(4326008)(6636002)(82960400001)(316002)(110136005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UX1iKCiNM2eaLTft5+Z29Au2SPCbHKCTuFvrnbddB4u4hKFs669iIJ9siAj2?=
 =?us-ascii?Q?E1EM5ep+CqycwcxBE55PGTF9qspRAQ01URXt1oXAZU0S37zgtaBE4sJmUYDs?=
 =?us-ascii?Q?+hoqTfLm5gH59yvD+JRdBAvj0DL9I5QrZ0b1nCgcnW0J2zJbfuHk/Zusdnbb?=
 =?us-ascii?Q?BQ0EyIRULXm+RBGcq08EXkkRaAJ7q1j9ucmpDMoPfKrYHPEitK7+0PIjtEnP?=
 =?us-ascii?Q?zaRXi3GCG2hm1eawGc66XWLZRfC8s+Qi8ZuPDHWvqynlMLQw5YhzUeAuPtc+?=
 =?us-ascii?Q?JbNk2SRkm6Z1lOOqb7Q31FZarItw6gntzd+EvEWQAaKpw+xzvfWZi1tyZ6Pl?=
 =?us-ascii?Q?owwdDMa8pFmghoU59Le+4MzeU1LtIoKJ7ae+aQnfV9DvzHbQ9OonfFrvMws+?=
 =?us-ascii?Q?tOzm1r5Nn5NNykeedj+yRQWIqzmAMxZVtSlYGwHGpyRF/2hnxp41jt5O0WJM?=
 =?us-ascii?Q?xfn/iwNcwtSRoPBFz3A8dDqIWvsLaAmA1h6PMrJPYaZL3iCIBIVULOCEXOpo?=
 =?us-ascii?Q?tLQClcPhuu7lG5SNMxGsSI8pFOLUaX6Kk1bxOxdL5y1ioksvdJGorAQv69oc?=
 =?us-ascii?Q?TaCSSxoSwfXBxwYmEpPCfQqLAVmuglLuHBCt0/f94o60u7Yb24vwYZ3WTt11?=
 =?us-ascii?Q?HVheT22PAb2isQQEFjxtAdlIT1z5F3ZxvT+FFLoO/QTN3cxCIN+Gz9nhP4pq?=
 =?us-ascii?Q?hPPC2awAxc8zSAlg23h8v7Z/GkSQPNttI9mHMppU1fRcxxHJ+FUaki1sh7G5?=
 =?us-ascii?Q?vO7vtY/oh0sdgSdvhCcq8c+kqNKcf2hxo4yXnxjW/3YjWTy32rN2mtN2jhGn?=
 =?us-ascii?Q?CiPprA4AKBHw4GqRx/F+D1XJM/jnSGSszo8feUTVI/VAxGmxNrbkMBrIGLbl?=
 =?us-ascii?Q?KBCaBnSbNeUrDRMTCNQ4nwP9JrT9AWViFUW1k/DEFtEcSZiHil5rZ99ej4HW?=
 =?us-ascii?Q?7dLRqLM3hOiJgMK79qf10dg7rQeglILil9NCbmVfxufL+a9xobOxUG5Z0dNA?=
 =?us-ascii?Q?rYEFJaz1v5wohGuHF+ZgMDIVrsUzJUGTL32D19UMmLSefLvoyWtykZOMUFER?=
 =?us-ascii?Q?M0f/H8A71JSXnMUzfMJGI5qZOFExNSLo/fSblzxDY2XdvX8rwqz2TNEtsVcZ?=
 =?us-ascii?Q?547qoa2veNjW8JvEiwYegMjJrJsvAoqAdshHS1NqIYGMiwiWOFFgPRYwyCQD?=
 =?us-ascii?Q?cqOw+y10gyxJiYvu8yUKO/2LGJdxz5aznborR6G03t8Ibu5BC38W2uQMmvSU?=
 =?us-ascii?Q?hDT1wwXP/stodsuLj0pP8J36AHHDe1BIYmo0fWRFa/fbQ6tB77wSdThk4SnQ?=
 =?us-ascii?Q?KhfjREY4MJzHSBN8npUlMikP8KKgXE+x5YF7mHgG51IxWXMw5qsQUEsNHezK?=
 =?us-ascii?Q?OW+WLFBbQkgCNkXOXic4aWp9FlxuqGxzuywvEy4AD/VVFng/dO6zi2FYd38a?=
 =?us-ascii?Q?VQXr6AMXNG0SkI167i6zgdNDNs//MM9S1g+wg/V/ZNh7849Ye8BeUf3DMqj1?=
 =?us-ascii?Q?rrnmzA9Yif60i4FgJ+EX4daGRDt5K8MU+4eCaf/H3DPcTnUa3lMdjkdjyzJr?=
 =?us-ascii?Q?EzG2Dq2ZM+Q7EIsw7zBdxaT0OWApQehtgTPsCmlLiGi9S/iPkoEs68zyf2En?=
 =?us-ascii?Q?1ixEH7wueWIeyRqf/kzTNVU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6180.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c719e372-46ef-44e7-e9d0-08db4aaf311b
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 May 2023 01:47:30.6618 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: rdHGFMvkVvSo+Z3fZP8S1JCMFv0WY9Ds4g82oDtHfB8f8goMgMwJGdYFpg8nLfnX+jfktGdm8el2pr4cg2w+1skN7IuEmx84xU0M/NgztWsRKkAJYCv+uc1R3LCmYlqW
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682992059; x=1714528059;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=TgrWQQ4AjzSDo8Z2mIV2XRILdIvHPQwOCgr0XmRok5s=;
 b=S4daFCfBviyioUXWagBkQ4d8FE5U+nWSBMaai5buD4IAiVmRvrIicYLZ
 QMrNhHDIzAYwAZCiodFdTOMQxo8XaUaKg22dmDSVK7fLn7bLB84QpSbw1
 5RG7eQcjkV6cPsJ8OQrph7+z+hF9sMQxT3N+NUcyrNR/FDlO5K9S7CjFK
 n6d0aur8btTfbm0jQm7t64sZfE6KNchqNwKj4Jf0gEWC/W1PYT4caNslt
 +CJooEARm4NVq1Mnk5YPdUrrDNyKzvlbfFaKP4QJiU6Fy4RKxeNR9dgCi
 dnYfagVSlfKxexDuQten69q4C0FKnnw0tdA8kXpvYrgUK4chffsB0eIsf
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=S4daFCfB
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2] igc: Add
 TransmissionOverrun counter
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
Cc: "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>,
 "tee.min.tan@linux.intel.com" <tee.min.tan@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Hi Jakub,

> On Tue, 18 Apr 2023 16:51:17 -0700 Tony Nguyen wrote:
> > On 4/10/2023 10:55 PM, Muhammad Husaini Zulkifli wrote:
> > > Add TransmissionOverrun as defined by IEEE Std 802.1Q.
> > > TransmissionOverrun counter shall be incremented if the
> > > implementation detects that a frame from a given queue is still
> > > being transmitted by the MAC when that gate-close event for that queue
> occurs.
> > >
> > > This counter is utilised by the Certification conformance test to
> > > inform the user application whether any packets are currently being
> > > transmitted on a particular queue during a gate-close event.
> > >
> > > Intel Discrete I225/I226 have a mechanism to not transmit a packets
> > > if the gate open time is insufficient for the packet transmission by
> > > setting the Strict_End bit. Thus, it is expected for this counter to
> > > be always zero at this moment.
> >
> > This still nets to adding driver statistics that always reports 0. My
> > initial reaction is since it's an IEEE stat and part of a
> > certification test, it should go higher than driver level since other
> > drivers running the test would need the same statistic? However, I'm
> > not sure how that fits in since you're adding per-queue tracking.
> >
> > Also, not a fan of the camel case naming.
> >
> > Jakub - are you ok with this 0 driver stat or did you have a thought
> > of where you'd like to see it?
> 
> Seems like something that should be reported back to the qdisc which
> configured the gate.

May I know which qdisc stats that we need to reported out? Is it gnet_stats_queue?
IMHO, gnet_stats_queue stats all used by SW QBV and not by HW QBV.

Thanks,
Husaini



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
