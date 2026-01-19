Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C4C60D3A194
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Jan 2026 09:27:41 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2CEAF40AF8;
	Mon, 19 Jan 2026 08:27:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id OICgfyyC28Bc; Mon, 19 Jan 2026 08:27:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 50BAF40AF6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768811259;
	bh=+JMb4tRzjrqekHhrmH9LfegHvpRBYGIe35JD/Th+wv4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4WVAYOLUDAeKoCKgHbesDVqhfstJyvYKKecYUgMY9D32/uylS5glqhGdIb53FMSKn
	 DHEqy3yzJ4fW2oLbn7rBk0F7Kdw+t3oYskPG7EIcejKjO/oBz8URZY0+qnRkadLFN+
	 dXbreBOMRLeSKQ1t8mAGLp85mlooDtZJPs0jUYXKSc025g0It762FhU2FFhZGKhmAL
	 qV4u2g3kpYFPY6PF02PDBhuprIpfp6JQC2rcLu+akY0B6YTfjFd6FjzDnUhWxBhx0q
	 Zb49VC4S5ubaq679yOFMMorCV97UsgrSuVhYR4gJ28bVCJM9ChfesEVxF+Q3oY6RFW
	 CnoH9GOuc9jdA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 50BAF40AF6;
	Mon, 19 Jan 2026 08:27:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 1FC282A8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:27:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 10C7B405A9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:27:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V9mYEQy5ZyfO for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Jan 2026 08:27:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.17;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org EED504055E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EED504055E
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id EED504055E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Jan 2026 08:27:35 +0000 (UTC)
X-CSE-ConnectionGUID: 80X43huRTTS6/jeS4XEm8w==
X-CSE-MsgGUID: 8b4wDj++Tp+aICm61Tq7Eg==
X-IronPort-AV: E=McAfee;i="6800,10657,11675"; a="69993292"
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="69993292"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 00:27:35 -0800
X-CSE-ConnectionGUID: 6e+RivgCSwylj09/Hvr2Fg==
X-CSE-MsgGUID: ljuZrDT4TI+VBu+9ssYukQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,237,1763452800"; d="scan'208";a="243381032"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa001.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jan 2026 00:27:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Mon, 19 Jan 2026 00:27:34 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Mon, 19 Jan 2026 00:27:34 -0800
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.59) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Mon, 19 Jan 2026 00:27:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=dBTDf+LrE3+UEt8Xp1u8P6mxexIUGmHaGc4hc9uCsHcnXy8b6Gbkb9uNtlL7bzXzTMgjabddYTMhxHHM/eoqB/XQi++vVuAwq67CZ/tM4uXZjXUrKJXAdWeZVna0gj0eAkbMFAnRvS7Z0EJYnipv9Un0ZfazE2kCUER6GxCvMwVOmUFksUuXh2obTI0CG7HWwklkD8YqF8+GvkpxMmprJOTF6+IlU7Im7P5WlyKCsFMd2Jisqi0HNZwWRKWHRHtdSEUkh5wcjAkg7+HOFIwKzzRoZD+qxLg/bc82feHlrpYozXPrfQNVRj+UO/i4FF8sKJarc3ymtv1HPyZXcEsSxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+JMb4tRzjrqekHhrmH9LfegHvpRBYGIe35JD/Th+wv4=;
 b=PNz9Id4C5rr0P+N/GPOPhQMHf6oaxVIj/8rKuKc9SZh5RxNS0BFgI9kGKdtLaX0PtmX1TOpaH/7atclq6Ozdha4RlRtxi9w4K+xtHkcWx+THgKz87dHpm8IUY60wlxiO7w0QyFylshzxcFtfoftaQRw5Gj81n6joIDR7H7yySsd88WLVkb9w85wZ9rTEj6fo+hoj/ohUrlGBpEW3cXzhAvmZDX3Fs/hHyM8CjlKksjlNL2iu9AqsRgjVa15QIpd9Kfpz91bKL/IxBOg/kivEuV6NYZiCA3gUM0s0avj7H+qO6FpDvmYc7m5ak3TGRtluvOovYLAR38Zw252LeiMkuw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by MW5PR11MB5809.namprd11.prod.outlook.com (2603:10b6:303:197::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.11; Mon, 19 Jan
 2026 08:27:12 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%3]) with mapi id 15.20.9520.003; Mon, 19 Jan 2026
 08:27:12 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Behera, Vivek" <vivek.behera@siemens.com>
Thread-Topic: [PATCH iwl-net v10] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHch8Mkp9uQAJwamE6D68fshB3ztrVZJ4GA
Date: Mon, 19 Jan 2026 08:27:12 +0000
Message-ID: <IA3PR11MB92544299E333CAE48DCD3B42D888A@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20260117150753.2088857-1-vivek.behera@siemens.com>
In-Reply-To: <20260117150753.2088857-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|MW5PR11MB5809:EE_
x-ms-office365-filtering-correlation-id: cfb845ac-5ccf-438e-f47c-08de57348b62
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|13003099007|921020|7053199007|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?K/OAsu2ndiogDGea3LuYdIzxiQRpEqbEAKCZ8UFe9tEkj7n4iEhcYKHhGbBt?=
 =?us-ascii?Q?HgjxVdosDccipFmB0d2KDZ6Wf9YWyLQT/ylCy8J8cizbo+0Mz977jlNAvmNd?=
 =?us-ascii?Q?P3sA9bIANYV/P03wTnweEYHzVulEqA29nHf8PK9KVN78EgjDUTZcBPSji5Sa?=
 =?us-ascii?Q?+43rPGMZCXgggeXf77tgeR/+OPOabOGmfwWW/taD+bxETVqe1e144MHI8SSN?=
 =?us-ascii?Q?u0MVUGWDSagpX+uyObc97w+TsNU6QkHlM41a7urGetgWMnHKqGD8RyMeGGwv?=
 =?us-ascii?Q?6QWhHcCEkXuuYQ4+uAmAnjhnaogjuXyte3BDtQt8GhJWZzO2gppNTIqq/3UL?=
 =?us-ascii?Q?Z0XK5dMNp2bgS6yyJGDOf8O115sV8DYUie1JfCUwEoIgOLozVulafbduI6Yf?=
 =?us-ascii?Q?CC70VdtnvBwsnEqS3FcpQql7P7lgQZ45IB4CMH9SyufuC5Zie6u9iNFPEXzu?=
 =?us-ascii?Q?3T2BMR0ZRItB2kEpOLKREZ4rLptTMfetnhGjPRANDh/qJx84OuSGWKgyB1l1?=
 =?us-ascii?Q?pviZ/Dz7VtVZanK1x7dUtBbesmVChqc/hkZv2BWb/POuTwJ/x4xpg4ITFl4z?=
 =?us-ascii?Q?k9xQ80FpcbF56njxENC9hou4tiroSjXUmAvv3D6G5fLw/hDLWZP1zvWecv+F?=
 =?us-ascii?Q?VL49lBOe1zgpgd5+srqy1ErJmOsuqPXDc3vVeRLJazIvn+g3METYe9qMGIIm?=
 =?us-ascii?Q?3uDuZMcosFHJ6Su2NsIADM5eE4YBC0rBXc/EwXVzjOEE5Di3HLoWnnrAVWr/?=
 =?us-ascii?Q?XHLqwTRLwazJgodyD+76+RTPd8Fx96wMrTMU+cMbWO49z/998iI1+SvpKEOW?=
 =?us-ascii?Q?WBR8dIaaWkavr/+X7kbpr8dx3s3t+8r9kLiq+1T59vXOWddgwiqMeVh3fgdT?=
 =?us-ascii?Q?NmEEQtEA+dYHF//EciyekFwJEXkoJToIXu71CijlRSh/l94cI7T9Oi6MnxMy?=
 =?us-ascii?Q?0bLJabg3OQw2OwKqVSoW5By3O4qzuHi22BVg93Lrz6wONrasn37bVfSl039F?=
 =?us-ascii?Q?Lphhv0Z99CtQfingd+1CG9YyJZVtigRVaRwk0xhNKVbUHyzdTRt9YlMO90fl?=
 =?us-ascii?Q?lKsEvGbecUsc5GZSkTIsJhW7Q36Qe0UnwA2FFwXXUTh5dZ882ax+6t+jmOPb?=
 =?us-ascii?Q?kQdtlap/XwAIQymmF+0XPzkEPp9dRW77U4A/L1IjiIYdtHpp24k6GDxBTf5w?=
 =?us-ascii?Q?MHsa7YbKvVVyH8BWo33rQXSSgV/2fD9ovsSBc2SR7KsKPMtrUMjSYUWXu13F?=
 =?us-ascii?Q?CRWbpQG8LL0Y2SDYmdd+cnowAvPdw/HGC+j/TmVY1ynZI2voVvUmFJpW+SA3?=
 =?us-ascii?Q?LTvWtpmu5UJXsWQG8ezEpKYGYJqkY1Zi0ktgjTkK+rPu6KT8jBFnxlT1Eh/e?=
 =?us-ascii?Q?1+PAs7Ew025ABwoM87Za86+QlOVLSgUjOoBf1bUbnYAmkmE3gjfEShVPLR5E?=
 =?us-ascii?Q?GXqjlZ0T3hb8m6o3ELVoIWf9Zcyfvv3WUkSLKp0KcmGNKL3pBJDVMUTlPmXb?=
 =?us-ascii?Q?pNYfHVV0lCAriRL9sGaU7HXt6E2NffEToxMQztYGidNhMpEx44SMKR7NqE7v?=
 =?us-ascii?Q?+/fbMv1vhUd1C9KfSSK+L/h/v4V9Dg59LTIHhaO8i7Ta3QDBpuCnzU0nJQFX?=
 =?us-ascii?Q?qRlzhkC78NmZXgA/1FvVtrx3zPpCwUz1Y+k6fqxfivqHQppXMSLR27gbBlyr?=
 =?us-ascii?Q?FD1uPg=3D=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(13003099007)(921020)(7053199007)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?OQq1XU8+yhuAjWcsX2AZG6DXwvNkPF+b6SXFSjJxNSvg9f23bKk2FD8B74UQ?=
 =?us-ascii?Q?mz8lvtUe+bC+vGM+szVHywUtABR52TM3hPgU5KhgzhGx2Gpdo3jqCQrAmkMH?=
 =?us-ascii?Q?akbSMbH5ytVFsKKuvOOj6ezdZ2jtsh606fqVqoS7GLFqaIlJ2aBfgjOBPiVi?=
 =?us-ascii?Q?D8/8sWbtngmJjS2ktzw7h0UA5PbBbSopTquw/E4YwsNi1tfGerLN1oNs/tkb?=
 =?us-ascii?Q?JnnZo7C+ZXiBlcG+0Q5qosOMwo92xBQKa9dWzoY0Ki8PNhdNTaDVx4DIfhnu?=
 =?us-ascii?Q?DadTy9VXtOYB3YjwOKaDGPb/nsPpRtHmvyppNgvFUOTSDPX4FgT3yoWoK8iC?=
 =?us-ascii?Q?uzjPv9x51f+03gf8poXJnmoNFhzfR650glTdvMOdXJRIMv/SUFjYXwwGpS1u?=
 =?us-ascii?Q?8O1XK/ocHvBntSLCEpQgehx9EbUTZgbgOwqvs8AMilBpI8QGzYUxNH2VQPM7?=
 =?us-ascii?Q?SXWuzlmkF6lw9obg9lertJGgxvYV+QdZI08Mwk51J+yb1n0KgZnw48myKK8Z?=
 =?us-ascii?Q?NTcue0E7+nUTsB81aPiFdgh00lUvqCH0VUwIW03y+p1MIDt1UQclw/dxccuI?=
 =?us-ascii?Q?SOFNlVr4oGYtTzPdMYCB79HyqlAQQ4Ibx/kpRRjDDDyO+4lfYHWzn5CEZcIV?=
 =?us-ascii?Q?uvk/PfI5HLhtukrbR6GlG68Pz/SDH+altPFEbExpS1tcsQBkDVurVRHLe/lC?=
 =?us-ascii?Q?o9ptxqYyFVbZQNFkCcIAn1e7/nKr7afeyrzwpaFGTYudLWLUCQfNfuZ5YdK/?=
 =?us-ascii?Q?BZJ9kX31gmGb0+bIxZ9q8nA+Y/NaJBuTkQZ3u+qILkX3ttugJzx2XYF255A/?=
 =?us-ascii?Q?9tUrv81acyxTuDl9tOY6yHvuazfuT/8FTU5+mKeM3WQl8ZMkgMaQGQpzS9Pn?=
 =?us-ascii?Q?OfzxU9J56liHqaxSD5i7G/+AYFDHuTLMTbO/PEYvj6UjhhGJcjNtRUsH+/nV?=
 =?us-ascii?Q?hTVwtev9kIGaHPSn56A+yhfwaZ4YUh3OgSzQyzLIGlf+udIZg29Jg71eFA/W?=
 =?us-ascii?Q?SqKfVL5sL1kVJPhMnNOuPPnkhm07dVDxN8kaVQsHTOqxpGYXJaF9GlJikOmp?=
 =?us-ascii?Q?F5wLZgGjG2PMgxw6Y4MD++sxRs3haBxzOy7lelU8Uiftv5T0eL74FzxyGmRx?=
 =?us-ascii?Q?NZ2KqnmPRJTIJVy72T5pHgT8HAyx+AMGchs9Vg64psK2DbyTSvspDjLlCiI1?=
 =?us-ascii?Q?Y1lYiS83xrxq9mLxOsePC6WsgDtX30k+gb2RyYKZHkerNwv/HsyDrtVP0nBM?=
 =?us-ascii?Q?WcVbhWRhxSvtnGTRphs9qSA2vd/0a1ZJBds5oqom6gMilEiEFycaCWZXjBKd?=
 =?us-ascii?Q?KL8jC82AJE78bTjVKoDEuHHSwrlBDPDCbrVPKMTmeRYKndSjbn2O6GoBgDHq?=
 =?us-ascii?Q?Agb1o8x4IVj+Hp88Eijte1y75+c9nUvchER1rBmeMlcd0sbcuBtLtWKhvC8E?=
 =?us-ascii?Q?Y8GBoRx3eg9qJcMX5mo+teSSNwGeOBPLTjY1sx6kpDdqQGZv7RBRJMkAgnvY?=
 =?us-ascii?Q?BhKq76soc4QkNupbhhX2TzsBoW7d+8901/5DmqRLJsYgo/VqHoxGTSnFJj3p?=
 =?us-ascii?Q?fkudAi91EWyoulbxi+oI3MBxMpLz441vdXvjgttv0To2fhfGjSgPbLhDvoTQ?=
 =?us-ascii?Q?YViihZSk4SAeEc3v8Rhzd9cSBhlnRA3OejphwXCj2BrgIKuqJ6tC/ajo3Um8?=
 =?us-ascii?Q?bt3FPaCl/TGRLLEgbNsVKO9x7p11xiuc1TFvggXaTvSAipZlehpW788eXU/e?=
 =?us-ascii?Q?8xgKdVPuwA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cfb845ac-5ccf-438e-f47c-08de57348b62
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jan 2026 08:27:12.1188 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: r/Fw+ZQCMBU2kErLPREXt5+LWf8y1BF8sCy7or+DqFshdo224cMKKvkoPOG4nwPmumMUvveT3m93IBqCwMilWQPBBxFyF8te2H6h0kJlvts=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW5PR11MB5809
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768811256; x=1800347256;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=U3jlthGd2A5ncxgxjq41a8EcQEUSEOkpAg/GsM7Z968=;
 b=JG7fnvl7w9dwtPrB2pQjXZxO5Qph8l+K+VdecOsZtswTpgkAmFEHW1yY
 TyY3f1BKRb/OYRvs0Q7UE6WP4NxRGk07X1D+ig5QrBDogYn6qEdCUP4+u
 qWmH0Xzv+bmRb4z3v78tXDlgnHLr5KNv4FfjpBfqLrVo+efDiewTLYfEU
 xUr3ifh4Vvsi9aa2BwsoWA9+LjPCRAV9BkbEZkuvruI3PorbJ15WMkBgD
 tef+p+uUC+CJuhOXRZSmIB9CJil2HMXwNfBlttB9WDOBYj9vKx2WUZMQC
 a5CdNqVBrxhwhGwYAgJsLe3aGYVkXWPOOrY8nxVK9u7RiHibNlPwUfbf9
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=JG7fnvl7
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v10] igc: Fix trigger of
 incorrect irq in igc_xsk_wakeup function
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

On Saturday, January 17, 2026 11:08 PM, Vivek Behera <vivek.behera@siemens.=
com> wrote:
>This patch addresses the issue where the igc_xsk_wakeup function
>was triggering an incorrect IRQ for tx-0 when the i226 is configured
>with only 2 combined queues or in an environment with 2 active CPU cores.
>This prevented XDP Zero-copy send functionality in such split IRQ
>configurations.
>
>The fix implements the correct logic for extracting q_vectors saved
>during rx and tx ring allocation and utilizes flags provided by the
>ndo_xsk_wakeup API to trigger the appropriate IRQ.
>
>Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
>Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP ze=
ro-
>copy packet")
>Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>
>---
>v1: https://lore.kernel.org/intel-wired-
>lan/AS1PR10MB5392B7268416DB8A1624FDB88FA7A@AS1PR10MB5392.EURPRD10.
>PROD.OUTLOOK.COM/
>v2: https://lore.kernel.org/intel-wired-
>lan/AS1PR10MB539280B1427DA0ABE9D65E628FA5A@AS1PR10MB5392.EURPRD10.
>PROD.OUTLOOK.COM/
>v3: https://lore.kernel.org/intel-wired-
>lan/IA3PR11MB8986E4ACB7F264CF2DD1D750E5A0A@IA3PR11MB8986.namprd11.
>prod.outlook.com/
>v4: https://lore.kernel.org/intel-wired-
>lan/AS1PR10MB53926CB955FBD4F9F4A018818FA0A@AS1PR10MB5392.EURPRD10.
>PROD.OUTLOOK.COM/
>v5: https://lore.kernel.org/intel-wired-
>lan/AS1PR10MB5392FCA415A38B9DD7BB5F218FA0A@AS1PR10MB5392.EURPRD10.
>PROD.OUTLOOK.COM/
>v6: https://lore.kernel.org/intel-wired-lan/20251211173916.23951-1-
>vivek.behera@siemens.com/
>v7: https://lore.kernel.org/intel-wired-lan/20251212163208.137164-1-
>vivek.behera@siemens.com/
>v8: https://lore.kernel.org/intel-wired-lan/20251215122052.412327-1-
>vivek.behera@siemens.com/
>v9: https://lore.kernel.org/intel-wired-lan/20251220110009.137245-1-
>vivek.behera@siemens.com/
>
>changelog:
>v1
>- Inital description of the Bug and steps to reproduce with RTC Testbench
>- Test results after applying the patch
>v1 -> v2
>- Handling of RX and TX Wakeup in igc_xsk_wakeup for a split IRQ configura=
tion
>- Removal of igc_trigger_rxtxq_interrupt (now redundant)
>- Added flag to igc_xsk_wakeup function call in igc_ptp_free_tx_buffer
>v2 -> v3
>- Added 'Fixes:' tags for the relevant commits.
>- Added reviewer
>v3 -> v4
>- Added reviewer
>v4 -> v5
>- Updated comment style from multi-star to standard linux convention
>v5 -> v6
>- Resolve formatting issues highlighted by reviewers
>- Try to include version histroy as defined in netdev guidelines
>- Included review suggestions from Przemyslaw
>- Added reviewers
>v6 -> v7
>- Included review suggestions from Przemyslaw missed in v6
>v7 -> v8
>- Modified sequence to complete all error checks for rx and tx
>  before updating napi states and triggering irq
>v8 -> v9
>- Included review feedback and suggestions from Tony and Siang
>v9 -> v10
>- Introduced a simplified logic for sequential check for RX and TX
>---
> drivers/net/ethernet/intel/igc/igc_main.c | 32 ++++++++++++++++-------
> drivers/net/ethernet/intel/igc/igc_ptp.c  |  3 ++-
> 2 files changed, 24 insertions(+), 11 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/igc/igc_main.c
>b/drivers/net/ethernet/intel/igc/igc_main.c
>index 7aafa60ba0c8..16a61d432296 100644
>--- a/drivers/net/ethernet/intel/igc/igc_main.c
>+++ b/drivers/net/ethernet/intel/igc/igc_main.c
>@@ -6908,28 +6908,29 @@ static int igc_xdp_xmit(struct net_device *dev, in=
t
>num_frames,
> 	return nxmit;
> }
>
>-static void igc_trigger_rxtxq_interrupt(struct igc_adapter *adapter,
>-					struct igc_q_vector *q_vector)
>+static u32 igc_sw_irq_prep(struct igc_q_vector *q_vector)
> {
>-	struct igc_hw *hw =3D &adapter->hw;
> 	u32 eics =3D 0;
>
>-	eics |=3D q_vector->eims_value;
>-	wr32(IGC_EICS, eics);
>+	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>+		eics =3D q_vector->eims_value;
>+
>+	return eics;
> }
>
> int igc_xsk_wakeup(struct net_device *dev, u32 queue_id, u32 flags)
> {
> 	struct igc_adapter *adapter =3D netdev_priv(dev);
>-	struct igc_q_vector *q_vector;
>+	struct igc_hw *hw =3D &adapter->hw;
> 	struct igc_ring *ring;
>+	u32 eics =3D 0;
>
> 	if (test_bit(__IGC_DOWN, &adapter->state))
> 		return -ENETDOWN;
>
> 	if (!igc_xdp_is_enabled(adapter))
> 		return -ENXIO;
>-
>+	/* Check if queue_id is valid. Tx and Rx queue numbers are always same
>*/
> 	if (queue_id >=3D adapter->num_rx_queues)
> 		return -EINVAL;
>
>@@ -6938,9 +6939,20 @@ int igc_xsk_wakeup(struct net_device *dev, u32
>queue_id, u32 flags)
> 	if (!ring->xsk_pool)
> 		return -ENXIO;
>
>-	q_vector =3D adapter->q_vector[queue_id];
>-	if (!napi_if_scheduled_mark_missed(&q_vector->napi))
>-		igc_trigger_rxtxq_interrupt(adapter, q_vector);
>+	if (flags & XDP_WAKEUP_RX)
>+		eics |=3D igc_sw_irq_prep(ring->q_vector);
>+
>+	if (flags & XDP_WAKEUP_TX) {
>+		/* for IGC_FLAG_QUEUE_PAIRS, this will be NOP as NAPI has
>+		 * been already marked with NAPIF_STATE_MISSED
>+		 */

The code looked good to me, but I am not understand this comment.=20
Can you help to explain why the NAPI will be marked as NAPIF_STATE_MISSED?
per my understanding, for IGC_FLAG_QUEUE_PAIRS,
rx_ ring->q_vector will be equal to tx_ ring->q_vector, thus,=20
no harm for eics to "OR" the same value twice. Am I right?

>+		ring =3D adapter->tx_ring[queue_id];
>+		eics |=3D igc_sw_irq_prep(ring->q_vector);
>+	}
>+
>+	if (eics)
>+		/* Cause software interrupt */
>+		wr32(IGC_EICS, eics);
>
> 	return 0;
> }
>diff --git a/drivers/net/ethernet/intel/igc/igc_ptp.c
>b/drivers/net/ethernet/intel/igc/igc_ptp.c
>index b7b46d863bee..df2e500a4d7e 100644
>--- a/drivers/net/ethernet/intel/igc/igc_ptp.c
>+++ b/drivers/net/ethernet/intel/igc/igc_ptp.c
>@@ -550,7 +550,8 @@ static void igc_ptp_free_tx_buffer(struct igc_adapter
>*adapter,
> 		tstamp->buffer_type =3D 0;
>
> 		/* Trigger txrx interrupt for transmit completion */
>-		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index, 0);
>+		igc_xsk_wakeup(adapter->netdev, tstamp->xsk_queue_index,
>+			       XDP_WAKEUP_TX);
>
> 		return;
> 	}
>--
>2.34.1

