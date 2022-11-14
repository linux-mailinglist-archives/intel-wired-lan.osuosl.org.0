Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ADA96284F0
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Nov 2022 17:19:46 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9DF1360E0D;
	Mon, 14 Nov 2022 16:19:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DF1360E0D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1668442784;
	bh=/Qxp2IzzwX7TSfvBVr5CebdvQzgTYFIstuWztwS8FGw=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=70jeoCgG1xxE+FuBZ7z2l1fZXtAw/10fa+NJcNy3cT5qC7Em140dUAfEcN1oakdKX
	 58wLZWoJG1icQ2Lhlm6JM2sbIz6+Xp+AnD2ag0+K0Z+W1mPsCW7x2OErb6ilGmZD9C
	 4K3cjzcuLR0mVbsywJ28Gh66aJJghCCBRSp5PQZWuSHTo4ZIWYJ4OhvPegAMLOzvb3
	 W2plNRNZAZFQSfEM3YZXGGTVyJBRLskvz4gnECFnEm5ozt+JWKH2+FJ3k3MWG4yTLY
	 7K7soZZ2GvGnoZqZGT5P/WXTlJ9mGQfHDMAqp7oH5mf+GyeIRKpUklPJhqnTTtqJUt
	 8a1cIK4zdGi7A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 94wO_sjIdUdX; Mon, 14 Nov 2022 16:19:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9874960E14;
	Mon, 14 Nov 2022 16:19:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9874960E14
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id D80381BF32B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:19:38 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B8AC6415FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:19:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8AC6415FA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MBkAifCorsp9 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 14 Nov 2022 16:19:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9B843415F8
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9B843415F8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 14 Nov 2022 16:19:37 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="295374149"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="295374149"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Nov 2022 08:19:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10531"; a="707372922"
X-IronPort-AV: E=Sophos;i="5.96,164,1665471600"; d="scan'208";a="707372922"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga004.fm.intel.com with ESMTP; 14 Nov 2022 08:19:24 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 14 Nov 2022 08:19:24 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 14 Nov 2022 08:19:24 -0800
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 14 Nov 2022 08:19:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jOIsC6QzAIe0i2YF9z/VRdU9ODHpXc9WfroIFncY5dyVhX08vdQ6FDrdF9q7npjGz0wHaOWjctK8FYz3YIGFUN4WW9Y84jOILBNa405dMyBAMug73aUMULlwAu8wNBZc1YCw6EjpqFa56hCdgr8U+PoBNYrlC6Evu5YPWRC+yjB9kxs+/aL/eqaUeYY4Qf5Q4iStby6UtDk02dJ0z5ikJdllf9Xm/of92/aax5PSPRKg8GI1cFLkUl7GmVKqpB9Cw0ViB+hZkx8Y8fO84FHANOtAvrfLj/LJevIi5mr9TahwfLZUyCHVzUdm4K4hAtPic4jov9G4P9YHrks2VqTeNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=6oxuzaEKrAg2K428MqPos9eDTkF2lhIBYHAmufjwDvg=;
 b=ZkOS5pCarRNpuuHJqX2TPT6mcGVgeQbrg9UY+Sk+zZQqbqOyyT2NdhUs4TjQ7ERuTIUd3PRd0O6+7OjXh6Zn3YgEDYYDJwV1mVqKSeMSrLjLdQxMGyIP32uioz6d8mD3WukJsgsdST/lK8Z42lpFk/ovWWF9FjSQa9c8pSIDpBgh+ItodRFpxrbYTHKWhknPETkKq/IGdN/VowbXsqE+T/Fed2hc38KCFXVtDsZxhiRMPJRadgjs7/BQwxcTGlp2yU8cZ3ziBf4gMK3G3w+GfVxURuAoMdzEKfwgchIiuiotuYinvItBlKrJdcC/5LaIpNxN2lcSvWbXATD2SF90Ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MWHPR11MB0029.namprd11.prod.outlook.com (2603:10b6:301:67::25)
 by PH0PR11MB7542.namprd11.prod.outlook.com (2603:10b6:510:28b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5813.17; Mon, 14 Nov
 2022 16:19:21 +0000
Received: from MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40]) by MWHPR11MB0029.namprd11.prod.outlook.com
 ([fe80::a419:6e81:fb4d:9f40%3]) with mapi id 15.20.5813.017; Mon, 14 Nov 2022
 16:19:21 +0000
From: "Saleem, Shiraz" <shiraz.saleem@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [net-next] irdma: change name of interrupts
Thread-Index: AQHY+APq/yHPV2aHiU2FrA0wpNd1vK4+dGYw
Date: Mon, 14 Nov 2022 16:19:20 +0000
Message-ID: <MWHPR11MB002973559040490B1377165BE9059@MWHPR11MB0029.namprd11.prod.outlook.com>
References: <20221114082048.9704-1-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20221114082048.9704-1-michal.swiatkowski@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MWHPR11MB0029:EE_|PH0PR11MB7542:EE_
x-ms-office365-filtering-correlation-id: 6be9d3cc-f46e-42ca-fc18-08dac65bfcac
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 0JDy56cTVYtcUEt8OUWiD8Coi/NgEF4Kixuf/E7XlSmXdlTXzqRZinzH5M6LM4knSZ158FdRPsgolROHj3nSg0u8jTL8YOHTd5CFCP1a0MQd4ibT/GgPD3aZ6S4j0cpaVpn1U5s3zq9bZsmTKaFjzBYMhqRg4ditFJtQgVwvVgjVMIu7imMwGaNNkGwQCozXD4Wd0dx17s2ZgoC52o6pIGnCZU/5jW+0SCdktfrO+x7vkOnNqPLEnMAm6zi5kHYzlFX2GpMqVVFufeExKKzHU0effmWqRUEJo3+xuUS3Wh3IUd3msfCqDIKdR8DMm0OpH+GS5MKkUf60LpBWlCL35zZPJFto/jNlF3omvyFhhpnCY+OnKSQODiAzlyBm0ubek2QpQS/Ol3+pDRP6UtdV8rvKBmdu6FfZCqNmxFeX52ytbTx9L2jpWlvmPLgTbGJ46cgGELlQLWE2Coi5gzE0f8VhQawkFgxJ71YUBCaFASxEl95XcbuchchSWGlZZ7TGzpBRguIMTUsxHygKE1PREhaSv/AwGg72VIHu4H9CWW7itLRBtoOSycRLdrTzq5V4FYEEVZ/J1DwFIqWPBlnwRFjHnvVlWC0fGZ34nMCQuvhb4lPcqqEMNdrTf4BBt9DA45+lYzKj63zoAZbs4W5Jc1zyK7ZjziFmTqmy3SuV4TIh7AmXCSsq2bRzB3g+eRKCnNkb4JND2/HJGjecj0bRgyUxpv1ZTKkQbdib/MrWfKdT2pr6PcJv5gQyUxT7Zg39tKTwhhXjIbLB0CIIfxRX7g==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MWHPR11MB0029.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(136003)(39860400002)(366004)(396003)(376002)(346002)(451199015)(83380400001)(38070700005)(186003)(82960400001)(38100700002)(2906002)(122000001)(52536014)(8936002)(55016003)(478600001)(6506007)(9686003)(7696005)(26005)(71200400001)(8676002)(4326008)(64756008)(66946007)(66476007)(66556008)(76116006)(5660300002)(66446008)(41300700001)(110136005)(316002)(54906003)(66899015)(33656002)(86362001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?KahrY1/SlPw9oRaRSW7cNboJr3FbucyA1W6AmwMnyPUE27J6c3sipc1c+Exw?=
 =?us-ascii?Q?+xwyf2f+qZZYRD6Hhw/eqVFmYrFsfzHrAJv7lBnfLfXvi8OOgQ9H9XRFLiA1?=
 =?us-ascii?Q?nN8SUclmM58V6rqB9Qmeu81Y2fw2xKy96tksXNzfDY8mMth1EyvA4WZuZR/i?=
 =?us-ascii?Q?//f2R3rPkMIOpRJJRtgpyrpq0w21jTP1NoDdRTtt76r4vLRhhjhIt84cNd+r?=
 =?us-ascii?Q?ojGvMyAjGv9FZ2hNxGZHi6rbRSc0JbY+w6N7hf5zTguMJeYGqqvlez81ANKh?=
 =?us-ascii?Q?HnaOULxIqB4cm4lZNa2eFJauSeUQU/sPzjAvUHix+qnwa55EGfnNHYndz+GP?=
 =?us-ascii?Q?JjO0idnm1Eo3iuALpINozLKVWG9aLORHhf4Ev8PQAbxThJPgGjWMGTgKl04k?=
 =?us-ascii?Q?KA+OoW/9oRtEJKNtWu7ZfKw7p30zq2MHUVF3FNfAJXQqWv9Bvr9Sp87BExaH?=
 =?us-ascii?Q?BD/z6mgehh5NeJCylKP9jMXNkSv4DVGbzhX9bkVUvb/c+8zRpSBMMvACcKEo?=
 =?us-ascii?Q?6eTneIHSHS8yHfmhpe5fOYCdjIEwzFwkn5n8lm716LcZfbyRikJJVNV5lUjO?=
 =?us-ascii?Q?wfTGF8QC4JlCTgkP0Tlis9IZg0cNzYWts4KE8b1w+0QHVD3Dc6YPdFQ/hG4J?=
 =?us-ascii?Q?vgejBIXjhWGKrsMvtP4q0h6C65WEjHy1t0sN9TR3JE5LVXdolCKUxL1g3lGn?=
 =?us-ascii?Q?boFvObGHv1/kNnab8JO5Tnel5gAG2WnaiRocCjXr8UNdgBuyeDrrVsRPpMQ1?=
 =?us-ascii?Q?NxZ55QJ4og2RHSVtV5QXRIDvoiRCHiEA9LpELK+szPUBOqo3yLVL9Pjrq6kL?=
 =?us-ascii?Q?6/8y2zf+ooElG97gDSY8J1QqA0JopxpxNKWgw312s3REOp1yFmu6MFp0lswd?=
 =?us-ascii?Q?a/KjY/VX+YnysPp7wo6nFVgc0uun/xRL+ooxqUqtPeT6HSamNzRLl6umYXSL?=
 =?us-ascii?Q?AMd3tcIskVLjWf88XgSicKsNgOJKMJnFVhJg8UclO0rMMib8fjUW/0tGdzed?=
 =?us-ascii?Q?PQdsiktdioIxSAiNZXreWAZL79xVDp0rd/iX9Qi2DuBDskLSVSPlt6h3FBt5?=
 =?us-ascii?Q?JR+PD/01Ma+O964OsHfJcyiUORmuQXiijcUle2iigOG5/e+Owl9sW344f8qq?=
 =?us-ascii?Q?qiTPK7ddEXgKa3YFq551yvb90Mu4BV6PBqdyHBqdBq95SYKCkfTKPuib2a35?=
 =?us-ascii?Q?eWTDQfiMyL5XXBop3vHs7SN0eNtrcwTNMG2fOoWUCXm+DMaLJN+yGaKg5DQe?=
 =?us-ascii?Q?Ug5CEvUKYhDHMjmMJeF8bKvXgWLZN9S2UEX0kBFjA26Rc4iWimXQ6URR8j83?=
 =?us-ascii?Q?mYTEVjC66vrVZYA6QoH6iYWv0fXA717j6gTy3yXWaEYgP0bTlTml3BEx1ACf?=
 =?us-ascii?Q?A9xWaFLUWxD6oolz82aTS4z2RIww75vAvVOfye13VF20lzZYmaKnUnZ08hqa?=
 =?us-ascii?Q?v6EKRUTbecXNxhAjrEuVuEortCFQf9dOmfjtxTOgLTiowi2kqDfHnMn1Co3O?=
 =?us-ascii?Q?rQEu+QxL3y5Mnh1zytWEPcjh1FxY1pr6QPE3kAwf3zB+CXWTgbOalKdDo2iF?=
 =?us-ascii?Q?AhnZ4kdGnInjW/lFHIlZTQwMi9paZOcsfcs7BxQz?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MWHPR11MB0029.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6be9d3cc-f46e-42ca-fc18-08dac65bfcac
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2022 16:19:20.9396 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: GQncmvNuTahRmcVlVRfHNrLPoIEUS0CtILKG/1Ya/9NgU+wIyajhUV0aB1FD5iS3zJsmEKtAJ+i1wmJ2cXjOpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7542
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1668442777; x=1699978777;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=k5c4jLQFFoEAFKo4oq8J/T4zXN7J3Y3E2Ppq1G6Krok=;
 b=X4KEqusC4j48Nb6d2PYp1smtXyatuwhXoTPx+VnIqAKFLJmNvpBXs85R
 cMFXd6SQIYlfGsebGG3YS31ei5iVyxl82y5HeslCoELsToAfP1GpUyF/j
 /ekm6jkMZRURLwFwnvxAjr6XXeXbHb7kUnxn6k5eFlyzvqQ6jQD/Wg/s8
 vGxred8OKrkgRP1Y+RXeE3ycRW7tFAYOyEEhlBuI9icszWeuV5PKfEHF6
 1przoMmr5lv18hT0m79ZaEtKU6xRKKp7fmfib/GBbOy/diPKFsBxli+rk
 8fCLY+NKVBuTWaBG2UXOOdXCDBnlx7D35iJvULPdpX0vyXn2cLay9uvR4
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X4KEqusC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next] irdma: change name of interrupts
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
Cc: "Barrera, Ivan D" <ivan.d.barrera@intel.com>, "Ismail,
 Mustafa" <mustafa.ismail@intel.com>, "Bednarz,
 Christopher N" <christopher.n.bednarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> Subject: [net-next] irdma: change name of interrupts
> 

This cant go through net-next. It needs to go through the rdma tree. I will co-ordinate w. Tony on it.

Use "RDMA/irdma: change name of interrupts" for the subject.

> Add more information in interrupt names.
> 
> Before this patch it was:
> irdma
> CEQ
> CEQ
> ...
> 
> Now:
> irdma-ice-AEQ
> irdma-ice-CEQ-0
> irdma-ice-CEQ-1

This is better for sure. But we need to add the device name. Not sure if adding "ice" is adding any value.

Ideally, for the RDMA drivers, this should be ib_device name. But there is a limitation in RDMA subsystem that doesn't
set the name till after the ib device is registered which happens later in the drv.probe() flow.

So I think our best option is to use the PCI device name.

> ...
> 
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Suggested-by: Piotr Raczynski <piotr.raczynski@intel.com>
> ---
>  drivers/infiniband/hw/irdma/defs.h |  2 ++
>  drivers/infiniband/hw/irdma/hw.c   | 14 +++++++++++---
>  drivers/infiniband/hw/irdma/main.h |  1 +
>  3 files changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/infiniband/hw/irdma/defs.h b/drivers/infiniband/hw/irdma/defs.h
> index c1906cab5c8a..09e4aba31b64 100644
> --- a/drivers/infiniband/hw/irdma/defs.h
> +++ b/drivers/infiniband/hw/irdma/defs.h
> @@ -20,6 +20,8 @@
>  #define IRDMA_IRD_HW_SIZE_128	3
>  #define IRDMA_IRD_HW_SIZE_256	4
> 
> +#define IRDMA_INT_NAME_STR_LEN (32)

INT to IRQ which is more used in this driver to reflect interrupt. Drop the (). And move to this main.h where the irdma_msix_vector struct is defined.

> +
>  enum irdma_protocol_used {
>  	IRDMA_ANY_PROTOCOL = 0,
>  	IRDMA_IWARP_PROTOCOL_ONLY = 1,
> diff --git a/drivers/infiniband/hw/irdma/hw.c b/drivers/infiniband/hw/irdma/hw.c
> index ab246447520b..46665624e515 100644
> --- a/drivers/infiniband/hw/irdma/hw.c
> +++ b/drivers/infiniband/hw/irdma/hw.c
> @@ -1087,14 +1087,20 @@ static int irdma_cfg_ceq_vector(struct irdma_pci_f *rf,
> struct irdma_ceq *iwceq,
>  	int status;
> 
>  	if (rf->msix_shared && !ceq_id) {
> +		snprintf(msix_vec->name, sizeof(msix_vec->name) - 1,
> +			 "irdma-%s-AEQCEQ-%d",
> +			 dev_driver_string(&rf->pcidev->dev), ceq_id);

As per previous comment, I think dev_name((&rf->pcidev->dev) is better. Given this should we make the msix_vec.name be a 64b variable?

Shiraz


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
