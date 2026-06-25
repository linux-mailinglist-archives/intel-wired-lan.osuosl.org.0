Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Vy4CB+rePGpytggAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 09:55:22 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 581B96C3850
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jun 2026 09:55:21 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b="M9/JviuL";
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0358C60F35;
	Thu, 25 Jun 2026 07:55:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 0U6N7d4R6jAP; Thu, 25 Jun 2026 07:55:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6C5E760FBC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782374119;
	bh=QZjnJfI6KOPQW0b44O7EaYwdqlBv4c1UHcF2Mgt4z+A=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=M9/JviuLDp8uTXQG4KYlx5+zlBi12xI1HnHu2fB+lgg9M2g8Orj8criR1vpX1jw7X
	 fpiB9THGTZBqA1KtqQvQbrUFvderMP1yy07TVGKYSioc17iK83uV5BC+viXJ4SYg7c
	 LXt7tvTlzWVUKQGsTn7ardX7RIoMuY6o8gFrfaPmSOnyLWRESiC240FD2xoaGPbFjV
	 fTwBhZ9dPbZ+5mZ9Us53J2rvMrNhlKvF4Js1J6MV/ZlmhjcgF/SqKleWSqz4CAR3P+
	 zwL8HU0wFVlAd2uIJBAjI3102zSOFUdjYv/tG9M50Zwnd/1Osygunu61rzlkrQH7hZ
	 V896s6ML7v6eQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6C5E760FBC;
	Thu, 25 Jun 2026 07:55:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 1EB9A254
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 04A2260F0C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:55:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KSws-Xgc-ips for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jun 2026 07:55:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D4B2A60EC7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D4B2A60EC7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D4B2A60EC7
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jun 2026 07:55:16 +0000 (UTC)
X-CSE-ConnectionGUID: 7i2IeS9jTrugRmKZA/pCFw==
X-CSE-MsgGUID: +K+bgJSqRlWJMVd+GZnm1Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11827"; a="86991581"
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="86991581"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 00:55:16 -0700
X-CSE-ConnectionGUID: 6Y45lLUOTkaRGBlGHVkJ6A==
X-CSE-MsgGUID: khAkpFRITU+7MZw3nT8j0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,224,1774335600"; d="scan'208";a="255359387"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2026 00:55:16 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 00:55:15 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 25 Jun 2026 00:55:15 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.39) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 25 Jun 2026 00:55:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Sq19dw35n0HE/dpxyki8OC2HsGiFNxHkIR5lCS+LnMfKL1Q0gh++Ju0lE2RMp3Y1VzivVxxzXDxp651CJ/dCNOFdluLw4BX6h9YnT3LORpboNDNnN3QLJ0QZaTt8allwKwf/9zrSnNeM8bc66CSBYmBSJwcSdknbkHClAmfJXEFl6/SPnZowjBkfYPzIlod1EJ8jYVY/RYBH6x6DDNNc86FXYVlL5ha53Rm+BvEDMW6oHIg3gK56jPOI37IcBnSNlfZOybIWppCDKZHqyU9rxh/W2RSTRVYAZ0WePTmGnzj5gVmWU9nPV2fNQCfZZ1p2YviosSF1IxtiaeKNMTfHYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QZjnJfI6KOPQW0b44O7EaYwdqlBv4c1UHcF2Mgt4z+A=;
 b=rRA8UbzDEzr+DM6QoYU5LqwdrTLjVLaQTXm4xZ0FXXJvR0b/cRI5WmDlKXYK4lzsudhvkXimPqbhM7noULZ92gMf/X7KgwMbTTJXzN7p5Raq0RDUkIONIo0aXYQCfKOIx0RuqaRZYbIVDVyNah009iS+xbopysl48wuULWyPtugb/uDPVq/PDrw4cKFx+WcsvGOXLJ7zDZCN42b1dVjPTkLE12fXM7FsXR4mIwb8w9k7RN5dauAKwVbSd+CeH78A+hUwYEpqyav7QvEfpPmVqGsnmoI/c45Gr/cfLoxtFC/6k1SsIB8VUVTLMPtNOmZZXZd23f8JU9fUVlKchX+MOg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5902.namprd11.prod.outlook.com (2603:10b6:510:14d::19)
 by BY1PR11MB8079.namprd11.prod.outlook.com (2603:10b6:a03:52e::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.16; Thu, 25 Jun
 2026 07:55:12 +0000
Received: from PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37]) by PH0PR11MB5902.namprd11.prod.outlook.com
 ([fe80::f95a:602a:34d3:5d37%5]) with mapi id 15.21.0159.012; Thu, 25 Jun 2026
 07:55:12 +0000
From: "Jagielski, Jedrzej" <jedrzej.jagielski@intel.com>
To: Pengpeng Hou <pengpeng@iscas.ac.cn>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "Kitszel, Przemyslaw"
 <przemyslaw.kitszel@intel.com>
CC: Andrew Lunn <andrew+netdev@lunn.ch>, "davem@davemloft.net"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, Jakub Kicinski
 <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, Richard Cochran
 <richardcochran@gmail.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH] ice: propagate ETH56G deskew read errors
Thread-Index: AQHdBE9+RaXt/1cea0emlZNHRxGAt7ZO5rXg
Date: Thu, 25 Jun 2026 07:55:12 +0000
Message-ID: <PH0PR11MB5902D26B2074D612865EA0C3F0EC2@PH0PR11MB5902.namprd11.prod.outlook.com>
References: <20260625030305.85304-1-pengpeng@iscas.ac.cn>
In-Reply-To: <20260625030305.85304-1-pengpeng@iscas.ac.cn>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5902:EE_|BY1PR11MB8079:EE_
x-ms-office365-filtering-correlation-id: 997fec49-ecaf-4194-5ead-08ded28f1633
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|7416014|1800799024|366016|23010399003|56012099006|3023799007|11063799006|22082099003|18002099003|38070700021;
x-microsoft-antispam-message-info: Kmfyxc/rEaDxC0AU8y7AdgBY1MuIfLBIcut+zb8mvTKpE2s5sbPSdOp6TrVrwSWPeF1E17f6NjR1oSe5IDHUFMFGbI1q3NmdMFaoC6IKMbX4fdcV0zqWPy3QUyDEo7ev/4DxohWvzX0eqz5kAsB9qJjCsFa97b/PNuCcUGy8gdrqYD6yCmmov2xqlXdBFq5c0qouiKGA6unfX0vowZBRru66+lCSQT1LP9+kZAdL1E7aGOutYfUkHVclrOMOlZCZna7QdOohBnC8KqtgFeUefSSlWimxqknW37cSfV9zRwebK9zCUpvOhtB+CIHqgye0ehm/L6fYuEFbKpAp+zPVlNBj9e/EdJLZvLQidEjLmJK3kKJaIaPe3WZRKKokNUHUcf78dM63IG1xzAaPhVNYejgmoOer9TgZukw5440qp5KQSlA9gwnE3zdr7BpcEsdKUUyyGLp95kk51f5kXYwnyHDPQmlGssZ2lhWpSACVc5XXhNoZdyBfCBQraC1BEfCMMdGPXjFD8PmRLjQ0qssLSfVbDy/Un3myj4B9LFHrtXwFl51b5FpfWlLCCUAkY0vIrl01LHUFgdmcfi0eJAS0tzRhxJWTKBlZg75Zx3Gs8cQZMwI6g5TwKAlZznJkEYAT3jEzD+2G2leP4VNTZ39UInC28uwhcLKDjTexiHdmMa+Mgj1u0F5heYi3bRRNuUABPBpuUAxhtK1mtqu2828JRiRzU6vIOeSyUx//7XTJibQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5902.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(7416014)(1800799024)(366016)(23010399003)(56012099006)(3023799007)(11063799006)(22082099003)(18002099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?yFhIu8FDpV2f4ZOzNGr+XQNImmC2gY+XPD2MOacUmMkJTP6QFsKuBPZCTycI?=
 =?us-ascii?Q?2ZwOGheabmns3S6yuq8bTKvhKGRxL+SaiPz6ANpkNyL8KE7hrxJ9nynpN1TA?=
 =?us-ascii?Q?wuJNCDEIyKSfdTk3p/3biUr+wCkAWcpxPIZbMAL8ukHe/i9HogKr1+rrrEXg?=
 =?us-ascii?Q?w5jjPginQ/jQBEdbOYxSnPPtK7Y0KAz5D5mQ8Ebjs3d7SAFJklES3NDspeAb?=
 =?us-ascii?Q?UeOkqQQhC7ssyijt/59YKwwxyINkpB4BGQh5WEKMHLnJJ/1y5/sDKBcbunFs?=
 =?us-ascii?Q?2GNVx40d6fB7dqWnZK02pOrTsgKxHwgOeML0pVa647XAYOkVnRKR9FOyH6aP?=
 =?us-ascii?Q?KpWR2BK8LzMloXGWkz38siOpo9SjM9qwInvAjlb65XkFCfK5FhtFiDRyoEoi?=
 =?us-ascii?Q?B2JllbbYSfdq82vZlJFq2LdIxDy/Pg9B1xsAd9mAcAlnk5gA4LkJz0DPMbsm?=
 =?us-ascii?Q?IBzWY13xKoA79JJm9BYQgZSJx7ktQzFIL8TDtHSZeygFRFrreGCuti3vBT4z?=
 =?us-ascii?Q?uIXtmJU7yBOQm2o8hNBeEOt//gGlbs0H3W/PLbAtDy/ekwcEhi+8Xp9Mv/3U?=
 =?us-ascii?Q?Gun2H0BxFwV8sG8Zu/BTytQzgynXhmzL3e952puQioV/ZUmJ5Bv34XZW3MK9?=
 =?us-ascii?Q?ApDhuK0D7J6zXa9cfO1coskAPhgSn7DKhN0ipWVBbF5mbGoUQLWy0Fqfq4G9?=
 =?us-ascii?Q?Fvab97BwZNF6vItK0b/lIhK+J5stoH8faR+CYtL/Y7boq9w0Byh2AF8C2lby?=
 =?us-ascii?Q?2USEWSNx+Ng5CvPmvf4JD62iCnOF1s4SCTyacCDL8sRetfVh+VlrMdibh9lH?=
 =?us-ascii?Q?ClZkAO0H/Fo2fQos0ZxaVlE6iVQ2QsaOt+R9ALzgvpciY5+a8absKHrQmEMo?=
 =?us-ascii?Q?nAi/sVTPMckd5uQG8Q5yV11X1DEGjLy5DwxDzNUVKopV93oBtqSTow2w8QXP?=
 =?us-ascii?Q?GTbo1JmEEWiOw0VJ74hPMYh2Cz6AjRNdGvme+GiJe/vhXidzMHX3dFVSm5zT?=
 =?us-ascii?Q?WeVokglQStUf2m8vHj4H+ATfc+MPys78ZRrTbGIMW9NM3s3q315jBc1CpF1h?=
 =?us-ascii?Q?A4KVpkuGuP5BaOVKFI+LD4P5RFwTPZ6g2VWi9WayTNbZpaHwAy5wZKIiR5mO?=
 =?us-ascii?Q?hxsejqG4SF8uSun259FtU5e8G2tI8nDtESUQT5tsdu0rhX7YlJCApkeTQ4vo?=
 =?us-ascii?Q?KvxQhS8BYeDsOBDazpd5/QX/BBP5Y+lxs8XOqwz7K52M2AJHcp75O7Ds4zRh?=
 =?us-ascii?Q?YA0cMMwGKpcu0cphh4TBIiCCFs6jRe6/GL5z8CR3BvtTE+98MXCOLHP4ioiI?=
 =?us-ascii?Q?WeXJR1KNjWH4QtT4YdO/7R1pgHEm6BoIcdLEcEuQ5hHM5kTKoJM0gksnuXkc?=
 =?us-ascii?Q?7Ros7UugjlAMOdUZxVa96YsfjywVGx7sgNuAGIzxnSnG/DJvdmOdmec3G+RV?=
 =?us-ascii?Q?cRYB3wMBG/xepCxszl+tu6vesS9Nb+Kzia45zuJlwSmKYJke4BnAHq01aMlD?=
 =?us-ascii?Q?EaormVO9cWtrtQ/jYOi5QlIddFn8tBYIqks5rOTO6pKuD+MJ0JATUtFsK0sm?=
 =?us-ascii?Q?ih38qMWhEgR8EAh7BaI+4UFx8j8oLkVvdGOykmH7wnz5RmqEJN4rKO1qFZHc?=
 =?us-ascii?Q?H2mfOm0G+GxXvX/YqDjmiKt9srzBvC/o81lF6mxbU+vgW/Aaw5BIfhJcx0CS?=
 =?us-ascii?Q?Nf7OxLfZfb3gYecvwzxiIHx/yHUZ0bblT7rDAWR/Qfv3dyof6A2NkI5txNEV?=
 =?us-ascii?Q?D0fKqyqCQQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JMostcTipcZvNRXqHY7XKSVuZO8kK1jGQSatwugOUT1BW+m7CngaLP3peMka/my1B8iSRdAVecONaCfKvq79BCrs4aFjTOMUagLmGOlTHxHAEhTMd5RJPADzFaJk4rzpXZe6txS4gcODU98D+8E/HdDPaOnNeoocSOs0vGzRhI3NLjnW0UkIXpMk7p9V52U30aFcX6KmXu5LSAiOALx4GQ/RRIVo4D/pCsQ6ul0yTSe7V/LrTvuCscNOEoGZC2oVJpnNqMMJE+k4W/kpuZNWtxjYy1qxJdiTtCK3CxwOP2ObnmQ5n6TjQpPVKztbzbSOm9oiz0FrI4W88SxVJk4JuA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5902.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 997fec49-ecaf-4194-5ead-08ded28f1633
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Jun 2026 07:55:12.7645 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: CtrSoNhB2PzrkWu1/V1ioXu0cNj00JoVSLcMEXD5uJ303uz9bxu/mae37ks/zJMm4jxBJK6fNm1u7Yr2N83RZLmTMQGvinbocupZ1/q+6xc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8079
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782374117; x=1813910117;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=nLxBU+Nzo9jLxWvNyMR6//ux4YC3DWpPJVgzIHIxNjM=;
 b=fFv8FqVkSW+qnEOuuf38+ivIfDRn2j6pPgcB4auRK5JJdaHNE4GotxnG
 xkLMKtx+L++Z0UuamrNF3n+69AV/Mj9Y9UgHJkg+8VISUZ/lDKgycQad8
 ibg5Zjh3kHcztt9xL3/OcvFL9wjx92lQsmw0rIjt76eQQGuvQ3874qXtD
 Dj6WoLHuaeDO5KxeSCqJ5/wvcL2yfq3iuoX9RlejO3OHlb3qZb2V3oL4K
 VWz6/J2gco8RrpTKYvjoBr9BfHzyZJUnOy3RRDQ4dJcOhNPwoDSMi3C0X
 Rrd+qgxELB1Uz3y0+xJUgMoPOXL4b55UFW2SKOtG0jXZYEl+O2YQt9XeC
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=fFv8FqVk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH] ice: propagate ETH56G deskew read
 errors
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
X-Spamd-Result: default: False [1.89 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:pengpeng@iscas.ac.cn,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:andrew+netdev@lunn.ch,m:davem@davemloft.net,m:edumazet@google.com,m:kuba@kernel.org,m:pabeni@redhat.com,m:richardcochran@gmail.com,m:netdev@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:andrew@lunn.ch,s:lists@lfdr.de];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FREEMAIL_CC(0.00)[lunn.ch,davemloft.net,google.com,kernel.org,redhat.com,gmail.com,lists.osuosl.org,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	TO_DN_SOME(0.00)[]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 581B96C3850

From: Pengpeng Hou <pengpeng@iscas.ac.cn>=20
Sent: Thursday, June 25, 2026 5:03 AM

>ice_ptp_calc_deskew_eth56g() returns a u32 deskew value, but it also
>returns the negative read_poll_timeout() error when the DESKEW valid bit
>never appears. That converts the negative error into a large unsigned
>deskew contribution, which can then be folded into the RX timestamp
>offset and programmed into hardware.
>
>Return the deskew value through an output parameter and propagate the
>read error from ice_phy_set_offsets_eth56g() instead of using it as
>offset data.

Hi
looks like fix so please add fixes tag

>
>Signed-off-by: Pengpeng Hou <pengpeng@iscas.ac.cn>
>---
> drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 27 +++++++++++++++------
> 1 file changed, 19 insertions(+), 8 deletions(-)
>
>diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/eth=
ernet/intel/ice/ice_ptp_hw.c
>index 8e5f97835954..bd2e31b816a8 100644
>--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
>@@ -1736,17 +1736,21 @@ static u32 ice_ptp_calc_bitslip_eth56g(struct ice_=
hw *hw, u8 port, u32 bs,
>  * @ds: deskew multiplier
>  * @rs: RS-FEC enabled
>  * @spd: link speed
>+ * @deskew: calculated deskew value
>  *
>- * Return: calculated deskew value
>+ * Return: 0 on success, negative error code otherwise

please state it clear that @deskew is also an output=20

>  */
>-static u32 ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32 ds,
>-				      bool rs, enum ice_eth56g_link_spd spd)
>+static int ice_ptp_calc_deskew_eth56g(struct ice_hw *hw, u8 port, u32 ds,
>+				      bool rs, enum ice_eth56g_link_spd spd,
>+				      u32 *deskew)
> {
> 	u32 deskew_i, deskew_f;
> 	int err;
>=20
>-	if (!ds)
>+	if (!ds) {
>+		*deskew =3D 0;
> 		return 0;
>+	}
>=20
> 	read_poll_timeout(ice_read_ptp_reg_eth56g, err,
> 			  FIELD_GET(PHY_REG_DESKEW_0_VALID, deskew_i), 500,
>@@ -1766,7 +1770,9 @@ static u32 ice_ptp_calc_deskew_eth56g(struct ice_hw =
*hw, u8 port, u32 ds,
> 	deskew_i =3D FIELD_PREP(ICE_ETH56G_MAC_CFG_RX_OFFSET_INT, deskew_i);
> 	/* Shift 3 fractional bits to the end of the integer part */
> 	deskew_f <<=3D ICE_ETH56G_MAC_CFG_FRAC_W - PHY_REG_DESKEW_0_RLEVEL_FRAC_=
W;
>-	return mul_u32_u32_fx_q9(deskew_i | deskew_f, ds);
>+	*deskew =3D mul_u32_u32_fx_q9(deskew_i | deskew_f, ds);
>+
>+	return 0;
> }
>=20
> /**
>@@ -1789,6 +1795,7 @@ static int ice_phy_set_offsets_eth56g(struct ice_hw =
*hw, u8 port,
> {
> 	u32 rx_offset, tx_offset, bs_ds;
> 	bool onestep, sfd;
>+	int err;
>=20
> 	onestep =3D hw->ptp.phy.eth56g.onestep_ena;
> 	sfd =3D hw->ptp.phy.eth56g.sfd_ena;
>@@ -1805,11 +1812,15 @@ static int ice_phy_set_offsets_eth56g(struct ice_h=
w *hw, u8 port,
> 	if (sfd)
> 		rx_offset =3D add_u32_u32_fx(rx_offset, cfg->rx_offset.sfd);
>=20
>-	if (spd < ICE_ETH56G_LNK_SPD_40G)
>+	if (spd < ICE_ETH56G_LNK_SPD_40G) {
> 		bs_ds =3D ice_ptp_calc_bitslip_eth56g(hw, port, bs_ds, fc, rs,
> 						    spd);
>-	else
>-		bs_ds =3D ice_ptp_calc_deskew_eth56g(hw, port, bs_ds, rs, spd);
>+	} else {
>+		err =3D ice_ptp_calc_deskew_eth56g(hw, port, bs_ds, rs, spd,
>+						 &bs_ds);
>+		if (err)
>+			return err;
>+	}
> 	rx_offset =3D add_u32_u32_fx(rx_offset, bs_ds);
> 	rx_offset &=3D ICE_ETH56G_MAC_CFG_RX_OFFSET_INT |
> 		     ICE_ETH56G_MAC_CFG_RX_OFFSET_FRAC;
>--=20
>2.50.1 (Apple Git-155)


