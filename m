Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id B66aA1uYN2qWPAcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 09:52:59 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C416AA5E1
	for <lists+intel-wired-lan@lfdr.de>; Sun, 21 Jun 2026 09:52:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=mKNW2dKz;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3C504409A3;
	Sun, 21 Jun 2026 07:52:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5vEbl8Zip8WF; Sun, 21 Jun 2026 07:52:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5DB9F40881
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782028374;
	bh=9/opGyMw67lkDblNLZOfnPCAOJ8Q3LOn8U3DD2hSvs4=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=mKNW2dKzrJhcbZtILkB2Go3UGS+6PE8UbYIqAft/1d4X/PxDzl0f1wcw4mzZpWFM7
	 J2GqCCiMZOKDy8gqQqQ6sR3ngGiKFffmZKtDh3JeO/hRYoDs80+ZrxHvrdBvZ3msye
	 SlnlDW8SS2Cz7f6p9itpsss+mZy9ZXCA7wuB8Ze2CdKbddRtIQA7J0eI19RDSfY8AK
	 qomG4BQnVjO9cGVJ5ZHZ4k1zLmBBWo37+HgTIbgFeK7Fwilx8quIboJxOqAR5HdbL7
	 xZ0saW8fQ1MvjCRYzcmW+1Y7QNgYQkWS1sZiVP3h2Lx47toktDcyd8XQtC+TYE8hMa
	 V9BtZY5aaO/RA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5DB9F40881;
	Sun, 21 Jun 2026 07:52:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0A8F524D
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 07:52:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E7E85864AC
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 07:52:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id F0PoSG4G8hID for <intel-wired-lan@lists.osuosl.org>;
 Sun, 21 Jun 2026 07:52:52 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0A24685937
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A24685937
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0A24685937
 for <intel-wired-lan@lists.osuosl.org>; Sun, 21 Jun 2026 07:52:51 +0000 (UTC)
X-CSE-ConnectionGUID: 10K7FcjkQKee9nQ9zNecsw==
X-CSE-MsgGUID: /hJ5arwTRKWKf6Pcq7303g==
X-IronPort-AV: E=McAfee;i="6800,10657,11823"; a="86636497"
X-IronPort-AV: E=Sophos;i="6.24,216,1774335600"; d="scan'208";a="86636497"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2026 00:52:51 -0700
X-CSE-ConnectionGUID: k9AB4XOISmKkkjC3BxlQUg==
X-CSE-MsgGUID: YcNxtC0rRYuo9vhGtDqNhQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,216,1774335600"; d="scan'208";a="279141536"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jun 2026 00:52:51 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 21 Jun 2026 00:52:50 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Sun, 21 Jun 2026 00:52:50 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.49) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Sun, 21 Jun 2026 00:52:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GGQOhXWUXf+USXxDjqz1AjrAnR+P5Odgh7F2R2GbrBNedXPMfNFq9Vkf4SruO08Ifso0sKVkReUrRpkyJ4Fx8Tovi+knYq8QDxr3jPUQqqEUFXKBfrZiRar7si95nUNwZemvvARV0rMN3wZBIAbeWiHlo3dE6i1dAaeVlMYJQqsWLttAjL6yLJ7Pp9kj349fletmzjwyLGcbypZrtVF5Ob7Nn/Ge98MEFkgP4ggYLlM+WazGesp94ZqDNiZM/bUXgt+JClYHNv85PCwUa52s6Vi8K1UIbU+EcXJ6GLZkvErxswu4H9+yRKZYf99a74d2ZLe7FX8b5glwvM5M8ElZmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9/opGyMw67lkDblNLZOfnPCAOJ8Q3LOn8U3DD2hSvs4=;
 b=K+Zlr3W3bHtHn/t9RaUVhJTqmpr+2V15S9RvdcS1l9CcbOVWJmQvWUM1tKejQ3PlRQAyQZw03bFEs6YswOW+PSpZ3JxBctW7ifA77gQexLTsRacPMbZlymbwlW6yjE8HFqRSZ1jAZ9mL1rddxzXAj5oDV/OyRdIgNDiSaEuh2II08jmMKdeuyajIjba/iuaQZ5qDHSut2lcnadg3BZARux7nlqko581YBaChhFt4HKcxFQvaG1IgAIJ3DcE/Ii+9qJzoo00Hr0cJ36hKlGH5zq1h0oPz4up/ju0983W0n58z8SbD0vsVsjq79YvsuOeyVGj2mQUBVEFL0hjEXKLeUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB6864.namprd11.prod.outlook.com (2603:10b6:303:21b::16)
 by BL3PR11MB6507.namprd11.prod.outlook.com (2603:10b6:208:38e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.19; Sun, 21 Jun
 2026 07:52:46 +0000
Received: from MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b]) by MW4PR11MB6864.namprd11.prod.outlook.com
 ([fe80::3cb9:afc2:1be5:5d7b%7]) with mapi id 15.21.0139.018; Sun, 21 Jun 2026
 07:52:45 +0000
From: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>
To: "Temerkhanov, Sergey" <sergey.temerkhanov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "pmenzel@molgen.mpg.de"
 <pmenzel@molgen.mpg.de>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Implement PCI reset
 handler
Thread-Index: AQHc/y3pkOfhu4/2PEaaJPdGejQGe7ZIpzDQ
Date: Sun, 21 Jun 2026 07:52:45 +0000
Message-ID: <MW4PR11MB686478EA94DDAF47191C16FA80E02@MW4PR11MB6864.namprd11.prod.outlook.com>
References: <20260618142212.310475-1-sergey.temerkhanov@intel.com>
In-Reply-To: <20260618142212.310475-1-sergey.temerkhanov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB6864:EE_|BL3PR11MB6507:EE_
x-ms-office365-filtering-correlation-id: 82e4482c-9ff4-4ffb-e678-08decf6a1501
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|23010399003|376014|38070700021|18002099003|22082099003|6133799003|56012099006|11063799006;
x-microsoft-antispam-message-info: RUIYWInYvBK6oM6MOEO8VkrP/ym4Znz8eq4w/QAAUyvtHRCOE9yeDqwz0io4uu5bLlsNr4N9pQSEe4Qxsu8x6xEmfevJGWQNWT4wow0ERXBdYb5GbYUVLFzufADJxsp9R5yf0Vw7DjzWV9a6zNDR4f6dhR+kyUR4KNGu8WIfsq4IKeUrrqdNa2EhFFqiKB+7/bP0rt7YDrnNmXo0BTxGB1FEsdmb5JFiSANtvIyH7a61FJ3st9+70UUYKeEV9ZXjn25VbeXYKPYu7vTDPSlsnPnMUnpVmwasrQ5CwmKOpwsHYm6u+o8nw/3dmUk/2g5NoGZtR3lyh3Wmrz89pWk/11xxpP3LRdz0vjBZS9Qvuagdk3haBHXJxLTc42evdpHPN0nhjuQJgFgB753LlWpGw+TbW+Kl3TNwY2ujKfWMFdIQJ9FkTVx1ZUxwVHfuOBfZ9XavoIXqwYC5Xn82nZ4DVU+M41DssE9VRzKzxyJk78EsI+FCbAWdoxzSArvDKLqoNbcDKi6XF2S7pYNSFuxCwkp7fRdo1yHqdabvElJhgDxiE130+1AXGnAhQhRcJXYsso0vYtot1ScPOy66wO1blH8YFTNuG+WvNKqER6vYH1W8w/E9dh/okSRK2epCq2YLTYgKFTqRbKmVjjvK5viLxZAJ7aHzluc8arfWpm4lCcbemEnvkYD5GFKDUmKFeJyzY1gHhXAB7EsvhG/rjWzef1VKCOeYtoo0g1mkBZi5vn0=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6864.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(23010399003)(376014)(38070700021)(18002099003)(22082099003)(6133799003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HQek6SFsT/+qNyeDO1VaJdtbwKyxkroHvHeDOyEFXMX2hMVj+TRpySU76Aaj?=
 =?us-ascii?Q?Nbsf+CS9V/FMxV3DeEahKAigAunAMCna2CASQeUz6Q5zrN2RyXTT1sZQ43FB?=
 =?us-ascii?Q?i2+n5GWNu9li/qI8eA7HLwpeh/9AXPds6phUs4BttSLKqoJLOss/wNpRsmzn?=
 =?us-ascii?Q?qD7C5bcLxAeo1Tak9wRKAmD2tM5ltdWEuBENXbF+3Hh9P05/nuOAjAvkexXK?=
 =?us-ascii?Q?g/8ni/dLwxbA4Epms09K0INNXfaXHDSf1OgWlpuFkU7ES7bBb9znelvWxj12?=
 =?us-ascii?Q?FT9+Tcp4/9VjQaErDoI3j8U+Vj0fJu1E2sjL2egFrVscEQt+RlZbUKHOTyXQ?=
 =?us-ascii?Q?rJ7TSIJdzBf3+BlBMPePwEEZrPp615188zIjoAWFLv8u3KYJGl+tBoTWrq6w?=
 =?us-ascii?Q?97tnV/WlPDLDriOvbDCKLOnW7RmUeO2YAX3duYUJZ3C5pYCBKcxj0nTIJL5n?=
 =?us-ascii?Q?lTdTWrf/IaKb2xp+y2K682xjhw/JpQ+cPB7135M4KqbyAJYZq9GCGJdoNueo?=
 =?us-ascii?Q?l1cW+KCPnXRUIy0hlarDMu4OEkLyAxzkx61LxbIh0LRaC/jxVoXibhIOOIm0?=
 =?us-ascii?Q?TKsE+4P3EYnfcldXkBokxOMAUDlkIWxeb9E3rLmCARg1PgSUHyok1CtMvgQ9?=
 =?us-ascii?Q?gTs2VWBvYT0py00cWNVVSoJKxsucRlFgu0rNPuBJGZA9761Tzgl4E1FN6nTg?=
 =?us-ascii?Q?rG4V3I+PnMmuqrCjzEmQxL/yS9J9l/w02M3108WtnUZmoQN7Wtd+BBXH4Vrz?=
 =?us-ascii?Q?6GUQNmbA/qOX1L3dinEmAAE9TeEQmb7WGWQuYhNFFlfWDDdg0vHUEHYiD7JR?=
 =?us-ascii?Q?uBikVs8O5qxIaucbDhWMnxTFtHEjanvqsYlUwAP2wgsXVxlqGLMgNN2bC06f?=
 =?us-ascii?Q?hKLCCLGqrtBolUzcbGouaDV1gI71csViqDL5FWX+kY9kHfWUlZJKTzhHtLdQ?=
 =?us-ascii?Q?7PcP4pCYVQN5Jrpkg4KENNNSMfbPxyeOWKQtWiky2/Hu+2Xg0/n3to9dQXX+?=
 =?us-ascii?Q?4jQf5mOuZIM47gnx4KMz3o9f/MurSmEWNqgFOmo7NlpzLUq2bfiU50KRis+/?=
 =?us-ascii?Q?wQlpLlPvFI6sRMjahgkvrUeDwxyAVsD3Qg1+FJO1Pi6m8yimRm5vCgXYAi4e?=
 =?us-ascii?Q?WCrSgbNVgiGrFnc7aNIBCzxp6ACnRw/vbxwNNA/r72TD/ZHbB1DAnU05U7P2?=
 =?us-ascii?Q?/9tJBPX2ugYfqhApIO7fPdW7B9K2jLe/COef4rq/uyGjWwH70RWiNqfJKytE?=
 =?us-ascii?Q?77TAYnaF38qWnbyiubk+R2yj42Kxwih1swyH1A7emzFM/jHKunxsRKB9moeR?=
 =?us-ascii?Q?tMvBRd8Onq+uWBsCco0S7cR1WhC4lbDzIahQjUX9D8tOhQWdWpTfBWbKbZ5q?=
 =?us-ascii?Q?6xgrQT5qKbc9AfuFFlkVH/8IQsqoSF2tuEW5KcUBOZXi2thY6zzdOf9Z84vM?=
 =?us-ascii?Q?zXxpu2wIxMHf9+8aPM0mFoVphZVrbp9POJoeQvVFG9sGMXiSX7WVhvbj5PZC?=
 =?us-ascii?Q?P8mXGMA5IR1X29gUDMdWLBYgGGFZ/SNwfmZR+lP2JZAduCIuzERW6TGHVNtz?=
 =?us-ascii?Q?6wnLbc9UgTJjEL9Cs1Kf0dppSxuNwt6atGKwqQ9r/9kwIPQ4TOEfoLYHNVAz?=
 =?us-ascii?Q?V4u9di0RIXT1GzXVhTqG9CtxLDQgU1CG/yWgAL9IVOEzoDnr+lrT5Mm0n2Eu?=
 =?us-ascii?Q?dqGGCTknoge8XkFOHQBi79rtPkXv1WZLlrnIsl2uxkS3jyxDlEPQIgAM2xCz?=
 =?us-ascii?Q?/n2aSJrThA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: McrITIReL74O0eYH565e9xjt4XJOPBxJzkBdDVa//TVfbDJq8FNQN85iUtpHagDK6PcvYtpCrrDLMcIG1pdffxj0ddeqKdCE+49b7lGFDEDI3dsT7s1qqy1Xw9ckJanUQ2iZ8iQBuyzfKms30kvGxcJm/U2efqsgMco2O6CFXhRKSqAxF72vXZ8TKtJlekNhAiNK2HNT3daf3xE3pqxgvhqznEq0/qT8/smTzS0of/WqzfrUrvPYZyE/XSC9NVx6C/1Q8hGcUaEm+IUVS2/tjbQO4lZvTAk4N2/XvRkLWnjZqHkDZIa9azzez4fnWUhA0qGPzEDtBf49ur0AT3OALw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6864.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 82e4482c-9ff4-4ffb-e678-08decf6a1501
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jun 2026 07:52:45.8827 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qiKxto4hr5PVS293Gd5SIWy62JJ/RJJdbu0Je5UfkWcnb4GIEvWSdtKXTKg+0C4lbZQclCU1eaEdvWms+KrBH/a36ZdSYFQdOpkxQNGSAZ0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6507
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782028372; x=1813564372;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=J0bTr9NAyV8x1P5/xyWiAqow74biM33sGTuH0Vnc8Wo=;
 b=ItJpUJzuDZRyhV/0kc1zfsdoPO5URp5na1yINNojizJytiC3IlJaU+sI
 4Vj3AKHltVIYoyEK6RUYUwSH5jZ3orToUcJa9Cnfw68FdnkuGVC58qwxA
 IpmraS7scCquaOlTHnjiC2ijiIRU2bgBnp/LWRTVmFjeIgX3r/d4ycu+c
 g9mAHSpx2LgTgA8W0mSBt+EEFiQgl6s0UiwyQPq1QLwMuoAoU7E9MLv8p
 FkdCSVG4tQu1u8W4aXnGCEj9gyaIi/lSqSFP2IWywGqtcnfR5BpJKQUJq
 jENxkUwuZGULqLGvNQhX6XlRAvLekGirBqVGW6Viecci3qXfKBzTMtzUd
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ItJpUJzu
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Implement PCI
 reset handler
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sergey.temerkhanov@intel.com,m:netdev@vger.kernel.org,m:pmenzel@molgen.mpg.de,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[MW4PR11MB6864.namprd11.prod.outlook.com:mid,osuosl.org:dkim,osuosl.org:email,osuosl.org:from_smtp,outlook.com:email,intel.com:from_mime,intel.com:email,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: C5C416AA5E1

Please disregard, this is a broken version mistakenly sent.

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sergey Temerkhanov
> Sent: Thursday, June 18, 2026 4:22 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; pmenzel@molgen.mpg.de
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ixgbe: Implement PCI reset
> handler
>=20
> Implement PCI device reset handler to allow the network device to get re-
> initialized and function after a PCI-level reset.
>=20
> This is necessary for the adapter to avoid TX queue timeouts occurring wh=
en
> the PCI reset is initiated via sysfs during the operation
>=20
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>=20
> Previous version:
> https://lore.kernel.org/netdev/MW4PR11MB6864BC9CA84F060AF7E02484
> 80E42@MW4PR11MB6864.namprd11.prod.outlook.com/
> v1->v2 changes: Rearranged the order of operations, switched to
> v1->poll_timeout_us() macro
>=20
>  drivers/net/ethernet/intel/ixgbe/ixgbe.h      |  1 +
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 82 +++++++++++++++++++
>  2 files changed, 83 insertions(+)
>=20
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> index 594ccb28da20..c4b0c5bb89c6 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
> @@ -912,6 +912,7 @@ enum ixgbe_state_t {
>  	__IXGBE_PTP_TX_IN_PROGRESS,
>  	__IXGBE_RESET_REQUESTED,
>  	__IXGBE_PHY_INIT_COMPLETE,
> +	__IXGBE_PCIE_RESET_IN_PROGRESS,
>  };
>=20
>  struct ixgbe_cb {
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 2ac274c73d61..0fb64aef223e 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -12352,6 +12352,86 @@ static pci_ers_result_t
> ixgbe_io_slot_reset(struct pci_dev *pdev)
>  	return result;
>  }
>=20
> +/* 1500 us poll interval */
> +#define IXGBE_RESET_PREP_POLL_INTERVAL_US 1500
> +/* 2 second timeout to acquire reset lock before proceeding */ #define
> +IXGBE_RESET_PREP_TIMEOUT_US 2000000
> +
> +/**
> + * ixgbe_reset_prep - called before the pci bus is reset.
> + * @pdev: Pointer to PCI device
> + *
> + * Prepare the card for a reset, preventing the service task from runnin=
g.
> + */
> +static void ixgbe_reset_prep(struct pci_dev *pdev) {
> +	struct ixgbe_adapter *adapter =3D pci_get_drvdata(pdev);
> +
> +	if (!adapter)
> +		return;
> +
> +	if (poll_timeout_us(test_and_set_bit(__IXGBE_RESETTING, &adapter-
> >state),
> +			    test_bit(__IXGBE_RESETTING, &adapter->state),
> +			    IXGBE_RESET_PREP_POLL_INTERVAL_US,
> +			    IXGBE_RESET_PREP_TIMEOUT_US, false)) {
> +		/* ixgbe_reset_done() will exit early if this happens.
> +		 * A retry will be needed
> +		 */
> +		e_err(drv, "Timed out waiting for __IXGBE_RESETTING to be
> released. Reset is needed\n");
> +		return;
> +	}
> +
> +	/* Sync __IXGBE_RESETTING */
> +	smp_mb__after_atomic();
> +
> +	if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state)) {
> +		/* Prevent the service task from being requeued in the timer
> callback */
> +		timer_delete_sync(&adapter->service_timer);
> +		/* Cancel any possibly queued service task */
> +		cancel_work_sync(&adapter->service_task);
> +	}
> +
> +	pci_clear_master(pdev);
> +
> +	set_bit(__IXGBE_PCIE_RESET_IN_PROGRESS, &adapter->state); }
> +
> +/**
> + * ixgbe_reset_done - called after the pci bus has been reset.
> + * @pdev: Pointer to PCI device
> + *
> + * Allow the service task to run and schedule re-initialization.
> + */
> +static void ixgbe_reset_done(struct pci_dev *pdev) {
> +	struct ixgbe_adapter *adapter =3D pci_get_drvdata(pdev);
> +
> +	if (!adapter)
> +		return;
> +
> +	if (!test_and_clear_bit(__IXGBE_PCIE_RESET_IN_PROGRESS,
> &adapter->state)) {
> +		/* Should never get here */
> +		e_err(drv, "Reset done called without PCIe reset in
> progress\n");
> +		return;
> +	}
> +
> +	pci_set_master(pdev);
> +
> +	/* Allow the service task to run */
> +	if (!test_bit(__IXGBE_REMOVING, &adapter->state)) {
> +		clear_bit(__IXGBE_RESETTING, &adapter->state);
> +		/* Sync __IXGBE_RESETTING */
> +		smp_mb__after_atomic();
> +	}
> +
> +	/* Schedule re-initialization */
> +	if (!test_bit(__IXGBE_DOWN, &adapter->state)) {
> +		set_bit(__IXGBE_RESET_REQUESTED, &adapter->state);
> +		if (test_bit(__IXGBE_SERVICE_INITED, &adapter->state))
> +			mod_timer(&adapter->service_timer, jiffies + 1);
> +	}
> +}
> +
>  /**
>   * ixgbe_io_resume - called when traffic can start flowing again.
>   * @pdev: Pointer to PCI device
> @@ -12384,6 +12464,8 @@ static const struct pci_error_handlers
> ixgbe_err_handler =3D {
>  	.error_detected =3D ixgbe_io_error_detected,
>  	.slot_reset =3D ixgbe_io_slot_reset,
>  	.resume =3D ixgbe_io_resume,
> +	.reset_prepare =3D ixgbe_reset_prep,
> +	.reset_done =3D ixgbe_reset_done,
>  };
>=20
>  static DEFINE_SIMPLE_DEV_PM_OPS(ixgbe_pm_ops, ixgbe_suspend,
> ixgbe_resume);
> --
> 2.53.0

