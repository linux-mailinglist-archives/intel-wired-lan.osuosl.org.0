Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CD1155312E
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Jun 2022 13:41:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E8FE340BB7;
	Tue, 21 Jun 2022 11:41:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E8FE340BB7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1655811693;
	bh=0b/hAmmsE9JjuISPiBMtkWSI1JFLeM0EyxihyjhHbnA=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=MI3AM5KjApg8lA9ulVuPjdngAzNNuo4XzgBQ1Kz7+OM6St3zz6OqcT+b1k0+hURo5
	 qxnuVQ2gent4SLSS6QX+kR5kMQNomQKSLG14ErOFvI/iW6v6V8UUAERFvoDiKUmDGQ
	 io5oZo2qDft6Fc13XsormkOZJXTAvlCaYUXukS3mFEEDW27A6O2JggyPUrV6u1tNl1
	 zpYGJzbbUi7Y4Kk2XAxE3GSriXUiWTTie3IsKijYPpSDdBrTyU8d40dGTpzmapmikw
	 4KdyOTiSKI8KhnCKSjjORKx1uWiMOAZrq1nbIJLHQhxpPhkjX/K2AaQdPMrqkN5imE
	 Oz+y9mG8LZz+w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lx2SB8AuPpkK; Tue, 21 Jun 2022 11:41:32 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 996C740BAF;
	Tue, 21 Jun 2022 11:41:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 996C740BAF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9165B1BF27A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 11:41:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 645584088F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 11:41:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 645584088F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0nR1rGb9mYA5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jun 2022 11:41:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D10B34086F
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D10B34086F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jun 2022 11:41:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10384"; a="366420726"
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="366420726"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2022 04:41:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,209,1650956400"; d="scan'208";a="714945471"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orsmga004.jf.intel.com with ESMTP; 21 Jun 2022 04:41:23 -0700
Received: from orsmsx608.amr.corp.intel.com (10.22.229.21) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 04:41:23 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX608.amr.corp.intel.com (10.22.229.21) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 21 Jun 2022 04:41:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 21 Jun 2022 04:41:23 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 21 Jun 2022 04:41:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=QA/IIK3UlLKIghdx91VNefYvPk2IJG4Y9dyvljkoli2JGMvv8gYPLwO1QP8lPrJxyxXM4g/fMUTsHbzZxhgfeSfBesaoX3C2qQjJJoTbMpXmWpqeCJIuxX7xwWm4MzhT65LDAZEi+POn1hWpKSWDr7p9pscsUBkfu/AtDwfhBuy9smCuCyeW9tNdL/ZI8lpLO9xhW08GwYTK8P5uUPEQgbw44DQmthDNQAYlTMolkbJCLtm5exYNBw0k2tYW4D9yX/2MVBN0fur0g8OZ0L1T9KF/tUluHQlZgf7YhBCZdKaoz3BiCHEEC9LIGID0HSqcqElrMHTJ7QI8zkvYTsH6Ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y7tjF6zndGu3Xzze6Un6+d90r3xQ0naNY5SJ8/LsaKc=;
 b=Bu84v7JEDV9JZgic5fkFDzxY2F9WwYfwcAv5SRAAmczk0S6unCALEYRQ2aaV1YLHBkxZQ7GPE2g1bJWh6Jk7ogF36p/Ypthm0cURlRR9jp67HVL5V3Qxsu/ejkyqXKmTzy77befQMMtlWCLCiVfLRiBYEJY6ripAMskUWzvppReXCa6qzoxTELDnNzRaiPk6Ozz7zgMPZJiNa5Cphwf66pwUOJIj71uVNLEv7+BLqp7qF2WdsBTHQdeLPKx9CteLugceMOT6VdXPkCSZh7j/e14a8r4UIVs2f+5EQ50mNe1iAm9YANR/YNW7znx/xaByPdV2CIRzYaCl4dgbPxEJYA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by CY4PR1101MB2181.namprd11.prod.outlook.com (2603:10b6:910:20::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5353.19; Tue, 21 Jun
 2022 11:41:21 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::829:3da:fb91:c8e7%6]) with mapi id 15.20.5353.022; Tue, 21 Jun 2022
 11:41:21 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] ice: ethtool: Prohibit improper
 channel config for DCB
Thread-Index: AQHYeXO9qNTm5BpC0kaAIacwbQsmuK1Z1JKA
Date: Tue, 21 Jun 2022 11:41:21 +0000
Message-ID: <BYAPR11MB3367072AD591587AB22BF8D7FCB39@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20220606070121.3086735-1-anatolii.gerasymenko@intel.com>
In-Reply-To: <20220606070121.3086735-1-anatolii.gerasymenko@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 38721178-130f-41ba-1825-08da537af6b3
x-ms-traffictypediagnostic: CY4PR1101MB2181:EE_
x-microsoft-antispam-prvs: <CY4PR1101MB21818926D09C037BA8CE0346FCB39@CY4PR1101MB2181.namprd11.prod.outlook.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yQvafGi+JJTrO+HFSJPHH16wY4wKS2UEMHf7SMMTJJ5h1FEWH7kcKgY81zrrC5ROht4NtE+SJT3LNzAGvOUAlJkf5HXVA+qSvaIpuCzsskcaTUAT4+HLRLcfVC23Ld0RaSulinVJF5qbap4ZfZMeqTl+OG4GqEEhFmy541GDa4fEsCRvX8oS+qGWTd/kG7ul/1xE4yDBe9T8lbnzPL+a9cXBBJhNvmPqIVwzWpw61o5pDYSq8Hu64d7K5G8ZpWSJPchmoAjx8l3+2Rpl47LLjp/+kb5mS8G7/SyXonStqJxbge2tiYtP04Y/IIlMyHpMECXU8ZfyCV3iO2X+NcigMmkk1r2ik24CvX3qCuEL8sh2SIcAYCkR9XDsaamD46dwwzesjSDszsLFOkN4vURY+GQszPRZmnG1u63cRfohed+61iMSaMMgBTwbcuU5nmHaa4otv83umuv/kLVUzAFPibC+0eFmYv+kSHAgPwPrmhAvgypDIryCta0idBOR0e87JVxXfPRhGuXktMC1UN9ztTEvRt2KYIs9zguKW5vgXnagAjhSRpeKgyD83BSilgSp7cVXq62AE+GeGFd4FE3cD3sxsudsZYxqMl25a7JOUPoK7z9kL91HBAfD2+CZ41tiSlWPL7UgJcdP5oYmPUZ7t1eJ830C1RYSGHZTArBNi9Ppqxyc+sSO66MLgZDRO7E1ImwRsrUl0CWGwPaygi12CA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(39860400002)(396003)(136003)(346002)(376002)(66946007)(66556008)(55016003)(8936002)(53546011)(66476007)(8676002)(478600001)(64756008)(122000001)(66446008)(4326008)(76116006)(86362001)(316002)(110136005)(41300700001)(107886003)(186003)(5660300002)(6506007)(82960400001)(9686003)(33656002)(38070700005)(7696005)(52536014)(38100700002)(71200400001)(26005)(83380400001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?mlV83UOFisRB4J/yheKPkpZwtqomPrK8Rp3nJX8ZPJCXVc10W8shlMAdTE8H?=
 =?us-ascii?Q?33ZNdITG09Ul4hTTbdLWIadr474zN67Eg9zwWj5QxTvfypwpnw7cyWYexsNP?=
 =?us-ascii?Q?0hbbbiGN/vy/3w/xivWh6FP8twabIZ341JV8wR/UPF5/Nx7QPe4CV+7172wk?=
 =?us-ascii?Q?wu461g85iUIkM+MeTPKGVylC/zaMTKNGYMIU1fonCi4KouGezxqh+2kOUU5E?=
 =?us-ascii?Q?r/yuWKJ15wTtEhZ5S6QhOroYx/ytDocwH2sNst5gOztFSwEaTOKWqhyn3elA?=
 =?us-ascii?Q?2jfmH36oGqbQHfK4OwuZ1khXPv92yg92828z31zZv/DHG6l+NZFOqJZKvOjb?=
 =?us-ascii?Q?aAe29f52zpIF3DEYRi7zksHK9DcEZ6a++VKjc9CiZKAnfTJ7UNDQon93sbdh?=
 =?us-ascii?Q?IMDh3wPDNB8a+ntfU8y2W0oXndXy+MmcCUUGYwdL6XU1Z6HKeR++5RWyx9Hm?=
 =?us-ascii?Q?J7gSnvkYVOypN4bFClb+Q3pxd++u40D3fbwh6U8oxq+CkUXW2aJ5hCTldoaJ?=
 =?us-ascii?Q?76mK6oxsNjG2icg0S8kdWrTQS6ZEdgRpueaD73v/xsOQB3tGQqQNWgGRxeax?=
 =?us-ascii?Q?uKnlxT8sJkuak0KHnpX3rPQlgs0JOI/KxssSvIb8A3wrzPr4poybD/pOXFH+?=
 =?us-ascii?Q?hyIbpNtz6UWxJX88kbfC9VMmGHkdkDRf7rcZYuawNUnNOlG334CYCPXz7CI9?=
 =?us-ascii?Q?eMnDWk8v11hdvvTSOVqKn7lob305GuQmsJKFWaFIjUuO58/kDYrYfZPgUM+Z?=
 =?us-ascii?Q?rA1tzaPJAajnjg1UrxW0eh4iXPfMY66b+liQOfqriHzBVS9Dpq96McssWd45?=
 =?us-ascii?Q?+naiEaDoUL0zOOC20sw7F4EcTA0fbVLza3MB9C+PuN/XVOt/wgnezZJSwRxr?=
 =?us-ascii?Q?rDqunO+OMSNR6zGsb1C6Y1LTLg9zQVtwOBWoW6bVvaL603RRc/U2JnKk4r2m?=
 =?us-ascii?Q?qa5fw4tYyhmUpp9aEStVxcBenauNJzsrrmQCqBvlt7N7Rx05pyIJl6yOK0zd?=
 =?us-ascii?Q?7MOssucsLP7pfq2G09jyVEWfUX/7DsWeeLS81DAu2TOM4xAiux41kPdPxlAc?=
 =?us-ascii?Q?5CM4F4BwYVip2ytfl2Ft1xzXk8hSdA1a8MJPGccyv3uxOaSO08gpUJVRvBvH?=
 =?us-ascii?Q?Eu/H+aXgc3ltWTa1OtwYVolxVwOfI04ufHGCMSf8+A9iTMQOibcM7/d+3tFY?=
 =?us-ascii?Q?WbCEpe5GCpwfEMO2SfOX1lCWXFneotMiQltZyQS3IEwVCGUxWXX3TLCl1smM?=
 =?us-ascii?Q?GRFZaiM5NHH3kz6/+KrdCeaJlmHf8ozTeRBt2cSeLhFYpHVIwykKT8G0Khh8?=
 =?us-ascii?Q?nAb7kO3vBH/cZJcWawc+XFNUGmxm6hiHQ4L43ZnR+ViYNoP9zP3WCpk7Ld3y?=
 =?us-ascii?Q?ksCStdQ37/Xa26so0EfryWCdjh2IUyJ/+ecXs/3Udkz7+bRale7OtmUfnXc5?=
 =?us-ascii?Q?QJZw3MP9Rvpmm5o9CPmORPwR9fMQXe6EqvXaEoMSO7UaGvY0GX+HQl2auM6V?=
 =?us-ascii?Q?bV+cqRRfAd+6hCpoO9GnvqgYTqPWY6G9YqjZNtPSR4UQ+AEdxXLoyVLQuauR?=
 =?us-ascii?Q?VqS7X/g0zep0pBz+mTwcgpYVaPGz38pi46MiWXs3QaNtZC3GlAfS/iFghq4n?=
 =?us-ascii?Q?gVEcJsjkX5VpzhIED72C0KEkHW+Q9qNbNrI7VpPockW8sifD/67HvnkxiOt2?=
 =?us-ascii?Q?Y7tzAdCOO4zKAZg/k4Yvo/oKVO5VHEaF2yS3Vdh/aDBa/25I5uhOXllL25Nj?=
 =?us-ascii?Q?cwWqsZe7+w=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38721178-130f-41ba-1825-08da537af6b3
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2022 11:41:21.6238 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DYfyK7IKpJT3tCsgT7M05kkFeAm6odHR+64qroHN0S0wVUfyqbZGxamOzuqHTymw6cGlXvCkPDLfhphz3oyTDw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR1101MB2181
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1655811684; x=1687347684;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=biZQujBuvH+BT3D8pq1FzqDdpmQYZQI9LTKHitY+/Uw=;
 b=ZB2vQIAbPhnC1jzHJpxbIdGRmKCuwFsThkSLVieMk1p6pY3cfTa6VV0e
 HtOrXXEAi3cp07PmDPzk03WpnEQwfDO3RN0/DdxzCpfPww8+CGnCy7Tkw
 sWaS//bf6DYe6+W4c89JAuMht+mnO81CaySKIp9dYJZzlqgcQoRmjIOFZ
 +q7+oGHTFraiocRQRMl717jNSuJn7x0cOsV0k8rwQK5TO+DzcX69jx2R9
 wdzLZaWv+UvKTZezatKWIRtckOuIeDSIqTA5EGxQz/30BfxqD/A6g8h4X
 eGYprLjHhqoaO/LsaGHy1KTn9ig8IuIFBBbkTlsJ11fTFJicsjESVQ+/z
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ZB2vQIAb
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] ice: ethtool: Prohibit
 improper channel config for DCB
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
Cc: "Gerasymenko, Anatolii" <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Anatolii Gerasymenko
> Sent: Monday, June 6, 2022 12:31 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Gerasymenko, Anatolii <anatolii.gerasymenko@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v1] ice: ethtool: Prohibit improper
> channel config for DCB
> 
> Do not allow setting less channels, than Traffic Classes there are via ethtool.
> There must be at least one channel per Traffic Class.
> 
> If you set less channels, than Traffic Classes there are, then during
> ice_vsi_rebuild there would be allocated only the requested amount of tx/rx
> rings in ice_vsi_alloc_arrays. But later in ice_vsi_setup_q_map there would
> be requested at least one channel per Traffic Class. This results in setting
> num_rxq > alloc_rxq and num_txq > alloc_txq.
> Later, there would be a NULL pointer dereference in
> ice_vsi_map_rings_to_vectors, because we go beyond of rx_rings or
> tx_rings arrays.
> 
> Change ice_set_channels() to return error if you try to allocate less channels,
> than Traffic Classes there are.
> Change ice_vsi_setup_q_map() and ice_vsi_setup_q_map_mqprio() to
> return status code instead of void.
> Add error handling for ice_vsi_setup_q_map() and
> ice_vsi_setup_q_map_mqprio() in ice_vsi_init() and ice_vsi_cfg_tc().
> 
> [53753.889983] INFO: Flow control is disabled for this traffic class (0) on this
> vsi.
> [53763.984862] BUG: unable to handle kernel NULL pointer dereference at
> 0000000000000028 [53763.992915] PGD 14b45f5067 P4D 0 [53763.996444]
> Oops: 0002 [#1] SMP NOPTI
> [53764.000312] CPU: 12 PID: 30661 Comm: ethtool Kdump: loaded Tainted:
> GOE    --------- -  - 4.18.0-240.el8.x86_64 #1
> [53764.011825] Hardware name: Intel Corporation WilsonCity/WilsonCity,
> BIOS WLYDCRB1.SYS.0020.P21.2012150710 12/15/2020 [53764.022584] RIP:
> 0010:ice_vsi_map_rings_to_vectors+0x7e/0x120 [ice]
> [53764.029089] Code: 41 0d 0f b7 b7 12 05 00 00 0f b6 d0 44 29 de 44 0f b7 c6
> 44 01 c2 41 39 d0 7d 2d 4c 8b 47 28 44 0f b7 ce 83 c6 01 4f 8b 04 c8 <49> 89 48 28
> 4                           c 8b 89 b8 01 00 00 4d 89 08 4c 89 81 b8 01 00 00 44
> [53764.048379] RSP: 0018:ff550dd88ea47b20 EFLAGS: 00010206
> [53764.053884] RAX: 0000000000000002 RBX: 0000000000000004 RCX:
> ff385ea42fa4a018 [53764.061301] RDX: 0000000000000006 RSI:
> 0000000000000005 RDI: ff385e9baeedd018 [53764.068717] RBP:
> 0000000000000010 R08: 0000000000000000 R09: 0000000000000004
> [53764.076133] R10: 0000000000000002 R11: 0000000000000004 R12:
> 0000000000000000 [53764.083553] R13: 0000000000000000 R14:
> ff385e658fdd9000 R15: ff385e9baeedd018 [53764.090976] FS:
> 000014872c5b5740(0000) GS:ff385e847f100000(0000)
> knlGS:0000000000000000 [53764.099362] CS:  0010 DS: 0000 ES: 0000 CR0:
> 0000000080050033 [53764.105409] CR2: 0000000000000028 CR3:
> 0000000a820fa002 CR4: 0000000000761ee0 [53764.112851] DR0:
> 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> [53764.120301] DR3: 0000000000000000 DR6: 00000000fffe0ff0 DR7:
> 0000000000000400 [53764.127747] PKRU: 55555554 [53764.130781] Call Trace:
> [53764.133564]  ice_vsi_rebuild+0x611/0x870 [ice] [53764.138341]
> ice_vsi_recfg_qs+0x94/0x100 [ice] [53764.143116]
> ice_set_channels+0x1a8/0x3e0 [ice] [53764.147975]
> ethtool_set_channels+0x14e/0x240 [53764.152667]
> dev_ethtool+0xd74/0x2a10 [53764.156665]  ?
> __mod_lruvec_state+0x44/0x110 [53764.161280]  ?
> __mod_lruvec_state+0x44/0x110 [53764.165893]  ?
> page_add_file_rmap+0x15/0x170 [53764.170518]  ? inet_ioctl+0xd1/0x220
> [53764.174445]  ? netdev_run_todo+0x5e/0x290 [53764.178808]
> dev_ioctl+0xb5/0x550 [53764.182485]  sock_do_ioctl+0xa0/0x140
> [53764.186512]  sock_ioctl+0x1a8/0x300 [53764.190367]  ?
> selinux_file_ioctl+0x161/0x200 [53764.195090]  do_vfs_ioctl+0xa4/0x640
> [53764.199035]  ksys_ioctl+0x60/0x90 [53764.202722]
> __x64_sys_ioctl+0x16/0x20 [53764.206845]  do_syscall_64+0x5b/0x1a0
> [53764.210887]  entry_SYSCALL_64_after_hwframe+0x65/0xca
> 
> Fixes: 87324e747fde ("ice: Implement ethtool ops for channels")
> Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ethtool.c | 10 +++++
>  drivers/net/ethernet/intel/ice/ice_lib.c     | 42 +++++++++++++++++---
>  2 files changed, 47 insertions(+), 5 deletions(-)
> 

Tested-by: Gurucharan <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
