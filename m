Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 700A7BC2201
	for <lists+intel-wired-lan@lfdr.de>; Tue, 07 Oct 2025 18:36:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B9A8C80DCF;
	Tue,  7 Oct 2025 16:36:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WDWGZJHUCfJC; Tue,  7 Oct 2025 16:36:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 22CC880DD0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1759855007;
	bh=G4kqkvSADySRdkxMBpmMQD9nfuYdvlAR3XOy99+uZT0=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=24VuRiyiQ0J+tUkuqkQzeHxb9ge2dChWEN/3QbUk8vQqGjhUdd5fbeByffIWc4Vsm
	 dDe9PwSvZ4JpZwpQAmn+e6oGAFKowGRUhFMp7YejAvF6j27p47fGTUPmdzx6nB1GYn
	 qNv6+qd48pMKQi5fnrkQeqSml9xQbMEXLNh/I00Tt+RIVqMch9hzSvdb6jS3YvwQcg
	 zKCxWErqXiLn1vwBmjpkuBdoiHmus4hebqkpxsxOX2Cs8qWisobOCbS/rzfzcCiL4L
	 JTILEQ1wI2HbxDZ4HUdHqQDCG468eag09kDJfe8izJB38zxcI2j3C/CXluZ74VAwRu
	 ipYp4Tn1A9JwQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 22CC880DD0;
	Tue,  7 Oct 2025 16:36:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id F0C4E226
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 16:36:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E1EC8403F4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 16:36:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZStzOUSDdZFU for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Oct 2025 16:36:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=samuel.salin@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org C6F72403D2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6F72403D2
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6F72403D2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Oct 2025 16:36:43 +0000 (UTC)
X-CSE-ConnectionGUID: jhLL1M2tQmibaULlwLVlNw==
X-CSE-MsgGUID: oa8HhYbXSTyQ6GjX9+D/LQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="64660752"
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="64660752"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 09:36:43 -0700
X-CSE-ConnectionGUID: HElcLpncQx+HU3ecEwJ0Vw==
X-CSE-MsgGUID: NILkZjqxTOia0tH7pRCFwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,321,1751266800"; d="scan'208";a="211151586"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Oct 2025 09:36:43 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 09:36:42 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 7 Oct 2025 09:36:42 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.42) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 7 Oct 2025 09:36:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Id/ptK5uGdDj0myBTXdM2JxHUnaNusIyOH5vSKFCJ+BT31/uZAAKYrElzBDxPo043oOenXvzw63z1xcJOELV+J9GI+U1pMpP7BMiYzs1zNgywUJ+c0DYZlgxxMrRqHFFsMvRKQPZGlOdQdyKEvvvU63SXRkUrJb+fRJxrtBVbiqEKjnYcKrpjLm9FGBvvAzOoGAQPSAfBk6p8Uclxng6tMC+63qVHkG6hkGiu5uZARe6u8ZqYjbXlBm6o+dT1YGVlPm8DxxJx4cC19ClfiI9DWL7747rjutgVxltgSBkaNz6tAz1pWsLtzOZnTObeiRI/FW0+XIbpCIZnIOMk5nC5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G4kqkvSADySRdkxMBpmMQD9nfuYdvlAR3XOy99+uZT0=;
 b=aMnACfhU3HAoUZLtcaKK4M8Cfwhxgv7flcHdFsKHJ8X2GsRW2CFzMNHJ77eJis0BbURNOHq+mRI7AGUtVhccEqB2ATVTS9K5na2Y+Ug5pPFExCMcrf3puM3p/P4a8UDfIoyZqrhQECc8MW4oZgIWHjHmjpdKSUpXH4LEllLXYmCjn/FzPb/M7RzBqqEQZQF7nMytOX1FAVblRalAXRAuO65398L/4NCUhZgCY/Y341h7ikYb5a3vIqz1UNENyh3EDjKYc0kmu4lKAsFyywfUgZP1455vFlkfVJW/sIn8Ev24Gkc6o0p3aSf7Qq8pIVkKA43xEKaz9T3nop1CDvRNNQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com (2603:10b6:a03:458::8)
 by MN2PR11MB4726.namprd11.prod.outlook.com (2603:10b6:208:269::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9182.20; Tue, 7 Oct
 2025 16:36:33 +0000
Received: from SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7]) by SJ1PR11MB6297.namprd11.prod.outlook.com
 ([fe80::dc50:edbf:3882:abf7%5]) with mapi id 15.20.9182.017; Tue, 7 Oct 2025
 16:36:33 +0000
From: "Salin, Samuel" <samuel.salin@intel.com>
To: "Joshi, Sreedevi" <sreedevi.joshi@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Joshi, Sreedevi"
 <sreedevi.joshi@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH] idpf: remove duplicate defines in
 IDPF_CAP_RSS
Thread-Index: AQHcKYfNfCyOzFx0iUOAHgCB83VfM7S2/bkA
Date: Tue, 7 Oct 2025 16:36:33 +0000
Message-ID: <SJ1PR11MB629795F2CFF799392E3C17BA9BE0A@SJ1PR11MB6297.namprd11.prod.outlook.com>
References: <20250919165905.1599964-1-sreedevi.joshi@intel.com>
In-Reply-To: <20250919165905.1599964-1-sreedevi.joshi@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6297:EE_|MN2PR11MB4726:EE_
x-ms-office365-filtering-correlation-id: 342e1100-a41c-4f22-c555-08de05bfaced
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?zcSpvAI3LFcqF1vRbn5R94mvk1U0aWZk5ssPx/XDe0U5qsBVnH0rv1ACf02Q?=
 =?us-ascii?Q?kTqgNg+loyebqxbFUkFHb2pMt3FmJh0JYJv7WkEwxBqxBvWcx7haWov3iiB+?=
 =?us-ascii?Q?tmaw+iM0C9bJwnpraKTen8Hb8NhLwfc9wiVb+p6QcE/5tqVNSRIpscITiApk?=
 =?us-ascii?Q?m6KA+MxvHy+e91TjIkLUnEUzC4CHGXH9qat/8zKXnS6UKh+jtYm2ZRCcKfNC?=
 =?us-ascii?Q?QmVlIkhlNal1K88DfLtp2lrnynRT3rOWqggDdEJy1ojJfIX9zIAgz9TVWZr5?=
 =?us-ascii?Q?TadaVj6gEFenwqvqsnz/44xihl4kUXVJBuxWzfzEKjo8SU+2bP7nydKw0efq?=
 =?us-ascii?Q?RR5VIs+s4U3b9JvZdiabLoVQLiNvF4jSDgUtBzTmg+HzqX+UcwS8fYGdYCaZ?=
 =?us-ascii?Q?wkFLrI5KPWKwitnVts6hCGYX7WDBV25bfsfYcDplnJYx9p52hu6aX+QCw6dM?=
 =?us-ascii?Q?u2Tbb3x4YO3mPYiTLR4sclU+Uav1NhUmXoMvq5N7+1GrBUqfeeKHlbDCZ4bs?=
 =?us-ascii?Q?o1dF8oGygjrFHXscUwyofd+bevyTqfOTg11XDNTs9bNkG22rETp3UnkOCStn?=
 =?us-ascii?Q?M0MVMGs03CoRIFGbo2cfWxej5zaLnY2rzP7kMPDvfExidSJ2TX7LV5Rbtos6?=
 =?us-ascii?Q?L+n/iT+bqwqjc3ko1nnEI+a8DP031E38u4/NZ4Yu5LCBo1awbCbVe0jVetc4?=
 =?us-ascii?Q?B/Ghk8fKh5vB0twW4Oz5zSuTrR+qHRNwtpd5zs1bjjFS4Y+5PdiFGIR2Bj0q?=
 =?us-ascii?Q?HoUj1xDTolcqL3p+JfOxlni4efGpOB8I5BuFXU+2XvNhkEBkfo74dCyIw0EE?=
 =?us-ascii?Q?5Ci1HmnNlU36sP9FIfCKhJ/nuEJND9ypEqmQJXdtviVie9PwexkmPr/6dzqV?=
 =?us-ascii?Q?WhaJvWVaYMuDqK1vX2XymSFhIdVpWsYKvy/cVY60EevZzstTILwV3RHQ8k+/?=
 =?us-ascii?Q?LvAnKnCsmjpBmJgpZQRAvavb833pG43elo8IP7r3S9oAAey5lE6DrtLGCLvI?=
 =?us-ascii?Q?pcSGKdYCdlQLf+oDREfLyUf5/zIM9opJs2WfUGCmen8MM8t2l5Ro4S3vKRO4?=
 =?us-ascii?Q?E9Uls2MIHU2dvzLPCxX94iUg3TL1+ZZpVl3p9MhSfveomoFhnEHD8TSqRBWQ?=
 =?us-ascii?Q?tuuO87AKcOUGhB0X/sgQqOSEFvra9ZeDgGO7oSlVNXqvoHQayYu4B2U732y+?=
 =?us-ascii?Q?lXHd1/yebW3sZvyVqf88dqFV6TAjxEzYLW4xqmyHS1EKAVDSknS/X1g85nyY?=
 =?us-ascii?Q?9HGO/HjPcRIAj4GvC1ZMkGRjgtaE8VwXWMnKejwW9TO75ZmEnk1MjCiyJg2e?=
 =?us-ascii?Q?IQuTcRUiPaq9gRVcytDIHodHSe9Vyr2rm/QUNkPuRUV2Ibj0uhQ8odwUIBxZ?=
 =?us-ascii?Q?QFSY0JMfoJhvqaBdtCWSwTwx3eXTLkwipEyMkQGJicLXhSScvf2gaCvaF5XP?=
 =?us-ascii?Q?lIwNkpcp6Rgl1FJ3iSFd7XE1HC1lj76DT6VNyklX0/ORHRs6HiyI/jwPrIT/?=
 =?us-ascii?Q?DNjMk+7v5Bvg21K8C7yQSACg1m/yCcZW0vE8?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6297.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?LODvfuC7FVvqpR8SzFKY0vCzh9nsSs+f6TTcbhQ/QygQVeS3todSh2xHIRIn?=
 =?us-ascii?Q?WnIRcqUzT8TMFx473C64YNl/nWasKaVh59xBLunNAxTdrHN+EBclQHi82wB6?=
 =?us-ascii?Q?hALNs1dciBWC2qxJbH5Bl8+BtLg7KR3qnPThNjCE6S7rq6EdtepvMt7/DIRa?=
 =?us-ascii?Q?Jp3/uwq5jWq5liamrblf/9L5A6c+CwLrFV601y+OVB6Ilfag+xogd+J9EdHH?=
 =?us-ascii?Q?jSEOyffUEZHbNHujY9E4ALwDHOIIPGcXkVrGZ9Hw+GXoG7DPhijg7fdrulSN?=
 =?us-ascii?Q?Ac1yQOBxvfMjtfttg7GFXGIZipEml/i7FJWJv8gOh4Yh4O+FuAD6qHRA0yo9?=
 =?us-ascii?Q?mEOYmZuv9zLkJzbOpaNjVBnSfOBh3ZukXMhH8yDzNKInwfj2Wv330ZMLxPZ4?=
 =?us-ascii?Q?fNLzrsm5KLACZoUjWGx/bIc1/DPjNmft1OHYI6W8o5h2EEz7EFBkF2ZRHa+h?=
 =?us-ascii?Q?nnk2zUznGC3mIiEYswZ//iHohnqUYtD1s/v9P8YDylNvBNs2TXb2IKvxBpTc?=
 =?us-ascii?Q?30PrDIQ4RoSLtO41IUAQ15fi8TmM+HY25atMNFWCp3R58q+gDMV+MebS/S2q?=
 =?us-ascii?Q?39ABevXqKdbl7NOwN4dl5x2iBUGY4TQsEfvPXCqSEBJQky7XnXA3Tb1PDgcz?=
 =?us-ascii?Q?xLTEGIujDyAXmxHIfSoipq5y2wp9DOHVFSaDmPx13hXbLOqBN5FrkVAP+dN0?=
 =?us-ascii?Q?apMM8Dp2Tlnh+qXWN52fDGCJhbxoc2TCJJ3K1A8+5yNeqZBYr0GHrOYKi5SM?=
 =?us-ascii?Q?bvKPpp073bySdCVd9ycd9Bwp1axbpEfssesb185vPF18/c9YkNNBdzFm6lfW?=
 =?us-ascii?Q?zhmP1QGSgj4hzerpVU/9ThENBWzB8VVZONwMXoY3A6WSDqXJJ9T/3Vk5qIcu?=
 =?us-ascii?Q?s0kxqV9MyrtVxqOq3olbNxuyc8bFzgbDRPwyUKrOlWvoCjMLCoXwnKC2Q4lR?=
 =?us-ascii?Q?iIm7lI3GhpqDq4/tbLPAnzUNIo+aAGi0viERAh0NYXuzvbphtWkv0W9egBML?=
 =?us-ascii?Q?RzerQLtWmtcKBSu4f3GQrPHPZ2jtQfmp2vCYClbw+pKy+M6hH50a6yqlx6wV?=
 =?us-ascii?Q?5mXkwVITTUT3nKhJvGS248cQ9RauCQI6MaDdql5aMKjxuF187a6zPPqv6GLc?=
 =?us-ascii?Q?9oiMJC47nDYGhfjzFYoonJ+s9CWe0JIjWMvp1TG+1XjyQjaTq+G3c2v16lG7?=
 =?us-ascii?Q?MSC0KPiacR5RBu1q1gP8LW61HBdFiM1lzBHQi6CqFe5pQYtJlDGShtynWtXb?=
 =?us-ascii?Q?yYBifBO18uQh0I2t8a+23n+KItnH9WFRuz0AhJM6tzz9cfQbCTPu53/26STN?=
 =?us-ascii?Q?3KTQDW5Y4tsiSxlexDK+cAXXIdOgqJMy3Iv7yK8eyBEbrRxdmBeQzhu/F3os?=
 =?us-ascii?Q?6h6QwvJGEVCqv33oG6IvYHhmLB7OwTXy6nZxfWzTQpMdZH5o/M+6fJzdhsnz?=
 =?us-ascii?Q?5XPkDfsvjG+EMTMN8mWGbxgt5EFCLE/CsWWMke7LlTi/Zaly1oNajKgzR8qZ?=
 =?us-ascii?Q?+eSQsFMk6rpVJ50cLu8kBlatJMZ/9YEGuW1sFjunp8yYboRvUR+cAJe7/RYE?=
 =?us-ascii?Q?l2dPjbCoqVN9Ox3eqd2SloVPGZOB+76hcd4Rh1pC?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6297.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 342e1100-a41c-4f22-c555-08de05bfaced
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Oct 2025 16:36:33.1120 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 8gZI6omSfps+be35KQ33qIVcjKxLXYUVXfkkuHh8G/Rh4Dv8qCT7DTTG+CStBc3RNympzJUEq3szVtSEOmwQ0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4726
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759855004; x=1791391004;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=G4kqkvSADySRdkxMBpmMQD9nfuYdvlAR3XOy99+uZT0=;
 b=B8vwvc2bS/TtHurESvh3YIZOu3GdMSP/so5Xp3w8x6v9VS+kPA/Ahypl
 9Nl5LuM1nuUD1mqMTQ9A7NmWmMEiGjkU5NN/vdiocZRNXzbmE04TSi8P0
 6r+zYC5P+LQG3keBJ2Gv7M5lOf/Nb1HRj5GHMtHqk67bmrb9bXMlc6l2Q
 GXvh+aJPNHCzuN0bsj875BExVhMDTAoNGOZ/TGaivuSi6jJaNaIKkNGm+
 k1EbN+1wpXjQGW6Jrl5MriAWqUbywFWA/9cPFTQpWLvx93msBsK+GUyLr
 GLetJN4Geg5RWQaNNXAhl1cggDniZnlfyaUXeeIZg1ea/RuZCvocfJa20
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=B8vwvc2b
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] idpf: remove duplicate defines in
 IDPF_CAP_RSS
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



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sreedevi Joshi
> Sent: Friday, September 19, 2025 9:59 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Joshi, Sreedevi <sreedevi.joshi@intel.com>;
> Loktionov, Aleksandr <aleksandr.loktionov@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH] idpf: remove duplicate defines in
> IDPF_CAP_RSS
>=20
> Remove duplicate defines from the OR operation when defining
> IDPF_CAP_RSS.
>=20
> Duplicate definitions were introduced when IDPF_CAP_RSS was originally
> defined and were left behind and went unnoticed during a previous commit
> that renamed them. Review of the original out-of-tree code confirms these
> duplicates were the result of a typing error.
>=20
> Remove the duplicates to clean up the code and avoid potential confusion.
> Also verify no other duplicate occurrences of these defines exist elsewhe=
re in
> the codebase.
>=20
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> Signed-off-by: Sreedevi Joshi <sreedevi.joshi@intel.com>
> ---
> 2.25.1

Tested-by: Samuel Salin <Samuel.salin@intel.com>
