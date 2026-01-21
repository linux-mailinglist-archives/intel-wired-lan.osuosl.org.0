Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wMYfLJY+cGnXXAAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 03:48:54 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0193C5004E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 21 Jan 2026 03:48:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD20D608E0;
	Wed, 21 Jan 2026 02:48:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id IsdadNIY_Ovo; Wed, 21 Jan 2026 02:48:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0C5176089A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768963731;
	bh=LHEk8pvyxsPh7bWiTr1Y43s6jfFMnKoNpkhRkTBpzPU=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Tb74jf1M2ij7GxmEfwzVqcnbSWn0cN7dYTevdxHDvIWs2Tv9R/NLgg7RmRShnlDGs
	 409Z5Ga7rZ6hRiwoUa/NiYR4L9W636vDB+EEXJUAYPxRRcw7PHTE8/KFEsauwes5ZL
	 oEnySimJmIl2ht6eLlVF/audSdrH8xOEUSpxLoEH5OhCG87NHcbVI4ZPm68RNIIovu
	 Fjnaj87AdoPQY3wbaao/eB9TmhkZYAkqVtNb27Ri8kaxQMTDBt7mhQevCSnSmbFCN7
	 XIMFv1jd8ES5fET4mvRVMRCxaDwpUKh83MDKnrcq+WwmfGgZft/KCgX5Gdrx/TEbMe
	 fvPUYdzYf5apw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0C5176089A;
	Wed, 21 Jan 2026 02:48:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id DC79E122
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 02:48:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id C1538407B2
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 02:48:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kTrkE7Wuk5V for <intel-wired-lan@lists.osuosl.org>;
 Wed, 21 Jan 2026 02:48:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=yoong.siang.song@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org ECD88407AD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ECD88407AD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id ECD88407AD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 21 Jan 2026 02:48:47 +0000 (UTC)
X-CSE-ConnectionGUID: idPdcCv8RxeGp9DhyQ5BYQ==
X-CSE-MsgGUID: lg3To0h/Rk2/RLwVpYdtUA==
X-IronPort-AV: E=McAfee;i="6800,10657,11677"; a="87599471"
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="87599471"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 18:48:47 -0800
X-CSE-ConnectionGUID: JFjipc2YS1acT+kRhKv+0A==
X-CSE-MsgGUID: JK0Q7mIrTq6S8kLoyzB8Mw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,242,1763452800"; d="scan'208";a="236959293"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 18:48:47 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 18:48:46 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 20 Jan 2026 18:48:46 -0800
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.64) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 20 Jan 2026 18:48:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jC2XBqEFxb5DLfQNX98gCFPTOJU5QdW6jMQbp91eyn9G+ENSi2d3EftueULZU++Gpnk1dC0u/Lri2SAKGwYFZnQ1NBeNzyB5KxICXWlmJ3NPnHkjKSh+xJpezNTwUcrY+frZWysXHCyxDwe1VwF16SIAuRqJqQ1eVkqdCpFMnL0YOc4j5x6ocDlj5ErCSZfcx1vla8Ql1x81mc0xiKAXu96HPxrlcQTr0uVY2Z+b06FFTZdZEypqr90DT2njUnsLq9YNXMF3AFO4EMjHkj8Ue6nCNgKa1SuSjPkzgagnFu8xW5QLBcU4v0gmihZj7xgadZ/MAhnq5vg1kKk+DUYI9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LHEk8pvyxsPh7bWiTr1Y43s6jfFMnKoNpkhRkTBpzPU=;
 b=fZUn3deubs8bxQq0Un+97SNEiaNQKBIfimIOORRn3K83zLUcwUxX03F5lVIgv6DMbJJTcPQ3w3iUdDC37BPqQ9N4bL/EhujLbGiBWYRsWOBiK6ZwtdllSeEN8yWfw2RmFEtwW+BH8KRoExWqwD93/EVxVtBm9wV3KUWJMYs9tGDJ6Dt1FLP+FnN56DB+x6u8K+sPdpBuloDHHyfx11BE+bGtKROmSRYEt+XbX/tGxKW3PIEN1wOUSJ+a3BpJywrMgHGmIoYyOrXP/vPeX4PKqIXY4T8BOffsk6AKwAiw2Z4TcGHLuNIUYAXA6KfGiGxw+psib22peBqsbRDlcMUrTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB9254.namprd11.prod.outlook.com (2603:10b6:208:573::10)
 by PH7PR11MB7641.namprd11.prod.outlook.com (2603:10b6:510:27b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9520.12; Wed, 21 Jan
 2026 02:48:43 +0000
Received: from IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7]) by IA3PR11MB9254.namprd11.prod.outlook.com
 ([fe80::8547:f00:c13c:8fc7%3]) with mapi id 15.20.9520.003; Wed, 21 Jan 2026
 02:48:43 +0000
From: "Song, Yoong Siang" <yoong.siang.song@intel.com>
To: "Behera, Vivek" <vivek.behera@siemens.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>, "Keller, Jacob E"
 <jacob.e.keller@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, 
 "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>
CC: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Behera, Vivek" <vivek.behera@siemens.com>
Thread-Topic: [PATCH iwl-net v11] igc: Fix trigger of incorrect irq in
 igc_xsk_wakeup function
Thread-Index: AQHcieHJAGXrezMC4kKa+/5airsX7bVb6/QQ
Date: Wed, 21 Jan 2026 02:48:43 +0000
Message-ID: <IA3PR11MB9254109F5128A003BAA48AB6D896A@IA3PR11MB9254.namprd11.prod.outlook.com>
References: <20260120075216.2260333-1-vivek.behera@siemens.com>
In-Reply-To: <20260120075216.2260333-1-vivek.behera@siemens.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB9254:EE_|PH7PR11MB7641:EE_
x-ms-office365-filtering-correlation-id: 0bdde2ce-5552-4ef8-ffa0-08de58979761
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700021|921020; 
x-microsoft-antispam-message-info: =?us-ascii?Q?i+wYENfYFTDsufkj+wTyTblaL4ueuFEY/R7k8ZPlYLIg7/PsFw83cLL6zeT9?=
 =?us-ascii?Q?d22CXz54wWaYJdUWQV3p3RDGngCVH3JC5/r4WfL6Fc+01OQ1dgRub7EYE+YU?=
 =?us-ascii?Q?2kq3W4nolIEE1U2otN2xWgnmcl/84axgj8QA4++GxZ1vLmfV8yT/RHTEpeZU?=
 =?us-ascii?Q?yLsC032Wj+GSbc6d1MGFfiQOjZMpHbL7Ye4p9qVuE7zskt+S0gV3UAlZp/zy?=
 =?us-ascii?Q?dV2qZ0OMa91aSWbQ0ZFnAlmnYwyhs7FSEzKUVIuT2A/x3fBPNzEAYqzwoWTl?=
 =?us-ascii?Q?y0Q5LHtvo82w+SvAgLTg+ba9PmHY9M2HPkIpZWpYu4tm+n3+LHjNRkom22hO?=
 =?us-ascii?Q?nAtrdmWaXrC76OdxNT1suJVCYxZv7XMxnxTmoMvp4FXJKcWh4r9PVghlg5zL?=
 =?us-ascii?Q?NFxbLHaV19o8jxTzIx8Y8lnqCi8EBA8eDxP8bBWSAIrSr6GAUetk52UsrLLC?=
 =?us-ascii?Q?ws6leL4fmmvywQIM8BHSas2i5bwqSmtw0oZ0M8DtFI/7boz5f+wzZwxWqRp2?=
 =?us-ascii?Q?OtumXJ48+8Xis6uVnPsKbsgaTxHR2Ffzo9O6kosNcsusLr0gk3ABxV8CY40S?=
 =?us-ascii?Q?Zc9QurhlHfH9oQHAh+YzMZ3Efn8T6xqc5PhmKOawHPanxL1ZmyLsd4R7p4Pu?=
 =?us-ascii?Q?eIPNBPg72bN0brRDAqVzFpVClX2vK84dZ5U92FWRTTml0ZYX+kryBqsDrOYV?=
 =?us-ascii?Q?DLrg8z+kIOXhmZlYroFpjKw/jvQ6037wIWwyFnRTnFpyxfHABEoAsurp6a9m?=
 =?us-ascii?Q?4KcTcQwqtLs2+WOoJJhZjgoPpSWbTma4Dzuamkm+mXHwqXqcQYDMcpDh0F+q?=
 =?us-ascii?Q?GhQ+8homE9B4fIZZc7CfHw+5nRpxxqSolDo9clRpuufSdkCZnEi1fl5Xy/0l?=
 =?us-ascii?Q?6OQgUXkYZLycUX/cJqNqUnPIMKoKZPqdA4qPPZURc47n4hN72JB9i5OxpSGa?=
 =?us-ascii?Q?11YwE/qzJBmB2gkP9THAjqUykvyr5Xi1NGsnWkPjOc5PxBgruB+EufxquEsy?=
 =?us-ascii?Q?NrQ34PssMBoY6tPQ/dwAiS/VC16SefeZPkCe3F8+sN4g67RardjCKKDJDToY?=
 =?us-ascii?Q?YxOygwsKHDgP3arGzCW8WwqyfRE4zd1yiO+mKvIsyTfLCxV5hvIxtrI1rv2a?=
 =?us-ascii?Q?x1lt9cJOIsr09Zz5VDr5P4UFHnn8+P1EtzRW+kz2srWe4EJO+iKGxl8YrITC?=
 =?us-ascii?Q?RCZBZ1yAW7OMaAvJPZzEuftdtn7RsU4AYK6L70eXTT+9uZwvBROD7Id0mcJR?=
 =?us-ascii?Q?eV0SVApW/uqSpojiKFE7QEYVDZP14OpLnf+mUhjZOpIeTzaPM5IhiGVwIOCm?=
 =?us-ascii?Q?UVIOpaXZISm5sv5IAZEuatZJITA/paHS0ID2CMbMRGjqMQk8CXk8VzSxEotz?=
 =?us-ascii?Q?xttLAJb1GRhUi6VM217zXP4IcCnRHdYX9yDce6iinC/BahgwuZgt8MZUOAFc?=
 =?us-ascii?Q?bK0F5AWFsL2rEfnHQndfikQkWEa15IyCfHHxhFQhNEmIn8ps0OIN+0qnr2Gi?=
 =?us-ascii?Q?aTWSHQKv/WIWe/LGuuTjDuMyZ5AUYU3ux4KlRNkL7ReZUgbBUfDEJ7UmqbGS?=
 =?us-ascii?Q?WgxZxK7yodex7qdhN8BVpuglgOk2JS3+XuZYqn4wdNpobT2rF3oq+lxhEhbd?=
 =?us-ascii?Q?3NPlNdWKRn0AWIhYDrOS4jTiey7zLh/w8Wp+RpLq8wzp?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB9254.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700021)(921020); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?gA9OeGv71hhUa2z1O1ozeIUYgNWQH9JTqB2ysb5vRWpDanFDqM1y0jSPROu/?=
 =?us-ascii?Q?jykGrsbmva+xvWVghj9I7nKDLHu6S/IX5rfJD+kKctnTNaFBItQHSZhx8ehE?=
 =?us-ascii?Q?HxNasqI576ZV5oxJbDcOYcCJQIRm4BG7odc0qzasywv7aWrYxAM6Mc7Zs/kf?=
 =?us-ascii?Q?87kZg5zEy7xw3ZY3aDXTfTQeStGprBg/g9+3FKa8zRiMsB5SHZgITQbSd3BD?=
 =?us-ascii?Q?BHzs4vdVJS8byzqJdI8GTSVRU6/t9xqRi4nQK4YqXP/DUz1KSLb6pUFNgAoo?=
 =?us-ascii?Q?mU/uN1zjGLw05TgkX6294NeJwhrEPnvW73ZfUAdZS32cL/s6aIh5cowDnfTB?=
 =?us-ascii?Q?8G3pqbVavcKoOBsCSElfXuyCclJ0dVNiokcv7vB4AVgkbKS8xdYSZ8Rz5yh0?=
 =?us-ascii?Q?5aH/g0eW4EKPiL2JA13tJQgqRJlN2ps7Lmddx17TkKaxP9D7r3SMf4XoMkCN?=
 =?us-ascii?Q?6oI+WasH3gPJbI/BLZEwmlggtwPAWVh++9+AIrstlbTqEzAMX/KELv16B2vP?=
 =?us-ascii?Q?LdjrB1ln8S6sKkMfyy884Rsj+oW/MTeTZIhnysjvdW1C/Y5W8Ukc9VhvPwi9?=
 =?us-ascii?Q?kbxCCI+4IDaqeatdYAeX7hffEVt4IWJ2OKJHWQegoZTATPcopiTX0xiyPosD?=
 =?us-ascii?Q?/yvlCQ7V2hLvjmEXi9nqeN8t/M6uZYm8MzsSqlV6CGNfVNB5uTv7k0nN52+s?=
 =?us-ascii?Q?64aJn9fSrStMHE0TGrXoMWRveVkjv6IIHrGi8HO/GmbgGPM+fjIzT6GgF9Ya?=
 =?us-ascii?Q?XLGEOV6viIdmtm+mmXImR/4bHnkeo9jh8mypa/V8N25dmC897LmFPnT8hMCK?=
 =?us-ascii?Q?MQqS6ZK0PgZKjOwVEtXqvMEz7YDgrbDOguOQUr06onGz+uF9iVaEJlq79JST?=
 =?us-ascii?Q?Y2cgCJdAygkpsP1ZKtwXj1HsO2E8P6dMygemewC4ihNAnh4m/tvFIseCr5jY?=
 =?us-ascii?Q?RYB0dxrSr9JB5GeNmmjj7SwJfV2Ecr6jICwkDi3JHRbj+yYiC+DPoMsv7ruC?=
 =?us-ascii?Q?SpNueH5n4UaprLGljLBFyM239PCDQ2MN1oZXzfMsukBt01849bhmmPGDIL/w?=
 =?us-ascii?Q?oRjOEcvPago+7EloUk5ROoHKJwa50pNiuZ0IygQYEiOIQqt+OmKzCsUub+38?=
 =?us-ascii?Q?HWGlKNHRwbukEax4xzD7aBuklQYr+FJ+k7RjIpjccl0XgnIGc8ewfnKRfhsb?=
 =?us-ascii?Q?jIP/hyRAto+Ns8Tbr+DTBPiNeMRQQiSy2R/9yAt+uPw4ztcaETcbCwP51YkR?=
 =?us-ascii?Q?vjS2Hk2SA/Oj199v1IehDpNIRDdqcrkRX8N/cCl1xR1MutYJ4ZNzVsAAJUZI?=
 =?us-ascii?Q?l20szpDInqB/ZMuSwC3mKMRYg56nRpmig/btF8gUcpbMIpRBEXlbXxFniilJ?=
 =?us-ascii?Q?xW3DVnlHqoi8HXClaQYxRHG0gssN0nb300D1ETpbKrOScd24v6/2CGYdmWks?=
 =?us-ascii?Q?UKQQRbASrD2mEvGbyrIVTCO3nJsx//kC9G0cmPlxDmMZ3PD+bQoho5KdQTSc?=
 =?us-ascii?Q?lUkqRvlLWV5j3TLQPL0TcRLAEwDc5EubwCR+gVgW6SFMdvNC2puHGeW0eWz0?=
 =?us-ascii?Q?as5qd14WFIpymCplREUHkjhTHoy2CgvHCzb5NE7yFs8TfwmqCFs6iOtCdO+c?=
 =?us-ascii?Q?+K6U6B40o/CdS9I0PQZAFceyIGO+ImR2B2nrkNv6/SQ4VW7wKuM6sJtEFp6c?=
 =?us-ascii?Q?Eu68wYhmJdY/3nq0xAFjgglwTsjAaGyWp6N6eEZuSPBDrBdsZcC0I/cVGfud?=
 =?us-ascii?Q?GTFTkhcNFQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB9254.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0bdde2ce-5552-4ef8-ffa0-08de58979761
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jan 2026 02:48:43.6113 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fQuZlhmJmXLLEcUkB3oeidYwF+fPitnOxliR11yzKBsm7x9xJ0VZkMF1c0kSinZ8TrD5GQWlGASOUgKRr/IDM/T1jBp8aoWnd6VI6votLCQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7641
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768963728; x=1800499728;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LHEk8pvyxsPh7bWiTr1Y43s6jfFMnKoNpkhRkTBpzPU=;
 b=GFx8V7Ipdre+c/UgUfZ2GIs9IruX0gubbx1C3EBZRxLGBeIcK7n/HC4P
 RIGPdxodi8vefKa16Q4u3zIIGamp8RT+haFhdcLcPtzlYmeKAsKjWUwtA
 xIGoE6d4vacWPtFpB7vJMcfJ3p8wmKV/YGqsCjwNJ0Rvh+jA4OgiRcynE
 jexsBz3ixSvkd75upAABD+30W54qMf+5kRAdbchagNwm9TSszmCkFfsJ3
 zy+0fey/NhrA9U6ecrGvbRDRsdHS1M7w392noPAuddu61swYMqdXLeKTO
 1umaYtJaQY4clTScg9T+wUt6mtKanE8mbNNFte0lnzDWmXaJ7EKHmEglr
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GFx8V7Ip
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v11] igc: Fix trigger of
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
X-Spamd-Result: default: False [0.39 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:vivek.behera@siemens.com,m:aleksandr.loktionov@intel.com,m:jacob.e.keller@intel.com,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	FORGED_SENDER(0.00)[yoong.siang.song@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[yoong.siang.song@intel.com,intel-wired-lan-bounces@osuosl.org];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,osuosl.org:dkim,smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo,siemens.com:email,IA3PR11MB9254.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: 0193C5004E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Tuesday, January 20, 2026 3:52 PM, Vivek Behera <vivek.behera@siemens.co=
m> wrote:
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
>Fixes: 15fd021bc427 ("igc: Add Tx hardware timestamp request for AF_XDP
>zero-copy packet")
>Signed-off-by: Vivek Behera <vivek.behera@siemens.com>
>Reviewed-by: Jacob Keller <jacob.keller@intel.com>
>Reviewed-by: Aleksandr loktinov <aleksandr.loktionov@intel.com>
>Reviewed-by: Piotr Kwapulinski <piotr.kwapulinski@intel.com>

Reviewed-by: Song Yoong Siang <yoong.siang.song@intel.com>

