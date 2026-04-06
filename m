Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CCnCByEW1GksqwcAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 22:22:57 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1143A71E6
	for <lists+intel-wired-lan@lfdr.de>; Mon, 06 Apr 2026 22:22:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 51046810C6;
	Mon,  6 Apr 2026 20:22:53 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QDra13nm5wot; Mon,  6 Apr 2026 20:22:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B3E5C81083
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775506972;
	bh=4ndGdS+HFWcyY/Z5CjkpTVsvtUfPP1EvybKx4si+CX8=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=YlrGHmKEerleaPb5JDSJbiGl7L+JqO4cY15Gkps1XrEBgPjwKWUtMwbVZH5xXbH8S
	 vH4oHa4oWyhUNlTwfncjYNi/D4eNFSnsi67pK6seWZF7+CR9xxaKwX7d56jr0E+RGL
	 5R7Z8DqnpsthBiN3CDrppyHIDAjDH0+0oR4C4xjuYZ08JQbKp/TLe9I1Wo5t3DI2V0
	 lI09IJlBVOat8X7DkTAn71Gx+sPWvXUuGS0Za2r6paJVer1n142mWJ0JA/LAnfVFpg
	 OFy+rFnZ8HzjkJOUqIzd8ONpoQ2CUnt//wTnWKDj3jlNhnzVJTL8DBCSu6a7On5p7H
	 NHQyQHXSoijgw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3E5C81083;
	Mon,  6 Apr 2026 20:22:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 5ECAC219
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 20:22:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5C39560B39
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 20:22:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id GyBMP837NVfG for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 Apr 2026 20:22:50 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.9;
 helo=mgamail.intel.com; envelope-from=david.m.ertman@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8A60B60A43
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8A60B60A43
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8A60B60A43
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 Apr 2026 20:22:49 +0000 (UTC)
X-CSE-ConnectionGUID: K2EKf0StSfGREL9YzTTDCQ==
X-CSE-MsgGUID: NILmiTcBQlCmI0RE6jbSgg==
X-IronPort-AV: E=McAfee;i="6800,10657,11751"; a="99087531"
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="99087531"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:22:49 -0700
X-CSE-ConnectionGUID: IBLo0L7nRFCw0lIs0xIZ1Q==
X-CSE-MsgGUID: GHVPCWQpTvOU2NZ92c56Dw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,164,1770624000"; d="scan'208";a="229628458"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Apr 2026 13:22:49 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:22:48 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 6 Apr 2026 13:22:48 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.58) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 6 Apr 2026 13:22:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=id8Zlr2yrlF9uDmc5HUuVgcEHO6rkKwsnQPRonVeIfsTLu8/IrcuGGuTUinoP2suu/c8xxAXnkuMfHUzaUMEctdJP7ie8LLnUjtOaM+CmxrnLj7gLxWQaDJ61YdG4sANODQbJnoP2i3ZDtMRgQP+78YyO33JZZ9TP3jIjGrlF7r+1j52pzp3ADlle7rS76nlcq5P3ZRMv2AO+0VTC6jEOWXoSXBusv4rKGffkdaYPCd1EZMthVSyHletLj4VbYZEewVyyF4xbwp5YhTxpDyab3VNm6g78SlSCb4grijEtZgBLYTmOyW61B2cAx23JNFuQAHPxU303q5SJkkKJAgsLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4ndGdS+HFWcyY/Z5CjkpTVsvtUfPP1EvybKx4si+CX8=;
 b=m09O01iz3n5kf2ciuCgb9F4MJAywD6rUUWwP5+kiRhpPYifAelJ+ANvOJSXuNBieqim1HsVEE6iCLEBfLJLUy1gYIpfB47k4w1EML952e4N+HsPFzn96mVrXLpWxKRO+aaiEpu1iLOsPRSEqzNi1QJ6GZmHKFX8xLb7HpoSLFRi1VSul0HEgiUGi/k5Dq3xyBMiRxaPLw/JolXFYATOo/sxnq1cGfkRoqjz/CW7c1aY98nungXhjXieXZ3GD3cNJZrzGSgnbR5IOP1TI15JGf5f0QWxnNw8yCgaSRtJlDEAVP3JmDUgLn64yv5gfAUuqIpzD1rDPORqV9skUqPIDJQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS3PR11MB9648.namprd11.prod.outlook.com (2603:10b6:8:38d::21)
 by CY5PR11MB6188.namprd11.prod.outlook.com (2603:10b6:930:24::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Mon, 6 Apr
 2026 20:22:40 +0000
Received: from DS3PR11MB9648.namprd11.prod.outlook.com
 ([fe80::aa2:1afb:9972:6ba8]) by DS3PR11MB9648.namprd11.prod.outlook.com
 ([fe80::aa2:1afb:9972:6ba8%4]) with mapi id 15.20.9745.034; Mon, 6 Apr 2026
 20:22:40 +0000
From: "Ertman, David M" <david.m.ertman@intel.com>
To: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>, "Loktionov, Aleksandr"
 <aleksandr.loktionov@intel.com>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Hagvi, Yochai"
 <yochai.hagvi@intel.com>
Thread-Topic: [PATCH iwl-net 8/10] ice: set ETS TLV willing bit in default MIB
 sent to firmware
Thread-Index: AQHcwyycFOvvyoDPX0S4IDkEEnHsHLXSfeFw
Date: Mon, 6 Apr 2026 20:22:40 +0000
Message-ID: <DS3PR11MB9648C6B216AA4DBD2C3E0E29DD5DA@DS3PR11MB9648.namprd11.prod.outlook.com>
References: <20260403054029.3789616-1-aleksandr.loktionov@intel.com>
 <20260403054029.3789616-9-aleksandr.loktionov@intel.com>
In-Reply-To: <20260403054029.3789616-9-aleksandr.loktionov@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS3PR11MB9648:EE_|CY5PR11MB6188:EE_
x-ms-office365-filtering-correlation-id: 848ec26c-8679-47b5-b716-08de941a408c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700021|18002099003|56012099003|22082099003;
x-microsoft-antispam-message-info: DA3msqXdVeCvIt8h+5Gvf8jYiVgUnkPHi/+3xECtT26ul0xzNbr9wzZX++P+NNZ9p9BWKn3DJbwdK8ocjZ3wvNYNDXWDbiM3yCy3wmc6CJ7PcWCaqt8KT/rdUDUVrLDKBi4Ha6bC5Qg8tvXKqavnyt9BynlssqhiDPh3k9YuArjpvrZH34NMFrrIzXnypuVonawtH7WBj9hNvtd7FJvF53gzz8mTja4x9PKeBF80wJ26gwqRrg1Lv4OXhv1FGE6fRZtocZfNY2eU9EGGWwHuzIV+ICG1HUOIcp1j2RgfKW6Ifyw5cPHUcaNqWU7vGtZuKrkymsQ8RtIPHyZqoE/cutxU5oj+S4ew6d38XulPvrT9ax73bQfAbLUgs12WHlnzEZ1WcSv6axVqvt/NTIAyvQG8sIM6h++yPYC1Ci9lO/ECFYyu46HCvi6b57qU0KmI+7PZNZtePnAT1m1UAk11v8jS8bp132DwRPI7XClXBfrAsuRcPDxAmBc5cxF96/G11OZvVAgKsuyILcPUeTVhaPepcdS7SDzoRc+RYwWumBF7/gNS4N/xjgSiPO0mY3o4TYJir8Qjqn+8IIH6tEXfWhocbFz4Kwj3ibtVnrw3zkmY3AhDEBiytyc0J8HB0WW7HDE5WZpOTiHqK8PPjV+Y9dbSbpHchibTZfAQgS4izyuJRM5A/+m+eYIVbmUsoAKtYMN49sy2qbUhRYzXVGiqADUPpWsg23PmlJ9JpnajFv0kTGQqc+87iMBULmji0o9ZBNWv/0xRELyM9Zju+IweuuIjxnE4rcX+gDwFgqbtdtM=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS3PR11MB9648.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700021)(18002099003)(56012099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?QD3P7n8TVbZ9PxGhcXwRM5kyfmT4a/y65OJEOqyUuyPzsfbaWvm/CQ0xMyuq?=
 =?us-ascii?Q?7Ocm1VcCYaD1lkvfvtFX05EAvbhu70HXm6CcxwlveC50cvoFRs27e2C/CBOh?=
 =?us-ascii?Q?JlqYBJYNI7BgV5ZV7tJSMq4jxJruEk1/SVzeUxWC1gVQXfCvWx48nsgsyhy0?=
 =?us-ascii?Q?zfmsMrlZ10ChH41xLNmIQLCBcCtGr1WVdDA7IHOGcJXDsTgIMWy0velzhbSa?=
 =?us-ascii?Q?DXrtwtMyDMUoKbmYocRFExTUn93WLTlBAlE2APCw5EQ49GubJ0SH6UoQOF3F?=
 =?us-ascii?Q?5pa9wct6m0A1CJNJl5M2Ky1rqh3zVqRVW4OK6iD5ZCCGbZc93IoDYAaHkWAQ?=
 =?us-ascii?Q?fWWwJjHidrGfoldI7vgs2KtUt7JM9sIwNtQuJlP3m9pOLRI8VgYfTf3mGSOJ?=
 =?us-ascii?Q?mcz2735qIO4PRXcQIzS4q6BQwgcxqHCq4Et0MEIBulD/4n6UXR3ZmySKKmg1?=
 =?us-ascii?Q?7VvoZ5AjQyyX88QPoSY6BfrK4tXl9oHJRRaPc60nGUA3UVHjIesRodD6Q6wz?=
 =?us-ascii?Q?TT64/mJ8YqARVERZChH+qt5S/CQfl6NrtWXhJRgV834IALDM6OttTYNCj3PH?=
 =?us-ascii?Q?hziXk0PJU07uauNUFqamJwo4eT/3qiM8vq8KlY8TOsqZqaERB82HlIA3hHuj?=
 =?us-ascii?Q?L3StPXfEAc1gNqRoP4jetyPZZvHMo/JfqL7rR7Yq+1h6QPa/U6I9W/KWaDkN?=
 =?us-ascii?Q?tS+pAyilyPF2vxhn8JUUZhkvgSo2YHjlofC+Ql+G64VITbVc9HSVewn6s8Zi?=
 =?us-ascii?Q?hZ/XQMekKLdt0q+LpkqJFYiKNEAT1cqRXhRx0WojRJaWsvAclB9k5tMFZ8Fd?=
 =?us-ascii?Q?IqidAdvAquDwhMdVDBuu3c7035Ka077G635MG4i4qEVTfJuwBaGJVdCw+Imc?=
 =?us-ascii?Q?FE4LBDpxb/lpZWi4rbw+LOT7a6PC1JweTEevKDDdpC78XXt2zqMyxNI+nQ4P?=
 =?us-ascii?Q?vVBmHfsoty6H2K+JC0+9VYV+Air+hXHw44gd6DX/RG7/OB05lrPDHr4ulZ1z?=
 =?us-ascii?Q?Huk2OLj6iJ6Iow+GZtN+O26MA4Kk5Ywv43MPRcruLfhMS4s5iX0QclqGxi5I?=
 =?us-ascii?Q?A1DxYqIP815GEKO2NmztscqAXzlF46bH8RVxGhdA8NA+fzM2nc6jwNQ54bpP?=
 =?us-ascii?Q?p3f0Wn4hFVpk6/j7MsTDn2NgRHD5TKFfts/iZRAXxRd0vakfr8e15W2yBPAI?=
 =?us-ascii?Q?lppIo+N6BpBySRSsPBLmvxxkBrQmQohenc4WLE4Ij/q5HCNKdLHchu+DTRLV?=
 =?us-ascii?Q?tfKEPVCDo5Zix06IYTHJ+BvbshMq39yDF6Qi3Y9WiRcEhbak7+Xdu0pREZSw?=
 =?us-ascii?Q?MAGny9OZeHfrextTImtANz/3OqGCzn/npHi9RoTq/odRKpxXJKFVMoaL7uFu?=
 =?us-ascii?Q?cxMivAFaBg41kQBc8x8aEJgIqvOwHh3ScZmFlVfOhCwnXLRvyPjVtVpPb+PP?=
 =?us-ascii?Q?GWSkjYfwkeJVMFX97mrzWzYsf9jWdkYLlHUchQRxZ/PeBoH9aXPIRRouakam?=
 =?us-ascii?Q?WbEtDkdLuX2lFk+fBduUZSHeEbLLMaMiXHp1Aq7mGaA3+eJQcIej+U/el0Pg?=
 =?us-ascii?Q?vPmkq03KMkHpI3cORrI30mu/8IQVzN7xB+D4u9LEuI79v8dwiihtbbkgTsdG?=
 =?us-ascii?Q?dK63QydwYd7j/dKxmH+8SEGXsV8bTuamdqzKvMEe9KC/bPi21YfZEMCZqxNI?=
 =?us-ascii?Q?YtZ25CqaSj0+J2y0nChkf4GamqXaHRkJRCU7QFWGR6e+R1ylI2HQXvGHEkYf?=
 =?us-ascii?Q?px8K4N15XQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: q6y3tlUnFFBsbB5viftiNrM4M+inBBcXG6PLPrsxn9tjbhkvQvMdWTIpFDh5IUZNKekCgr6Fv2mvSZI8N5wb/Qfthuh7AnckJKwT8RzfHDLZ3Ra6ZQyg1ECxdu8Lw7L73hwZLXJGTkvbRjrf2pqwX6k4noKiTwqMHK0GgbFkmYFHK/NCwUfLrenrC8u1TBcJLecRywA2FC/zS0vey//Rdt3HRtYyEHVOTbFLh0HH4U6sZzhkBgKPgDeH7fm40QhaMWTjHBnmFH8AugJLkFLiwBUKNU8F15pQDgD6AwHHzBwKnJt9Xyb2etRgKzbzYDMEqK2DWlwqpVZfJzzDvGPzPQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS3PR11MB9648.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 848ec26c-8679-47b5-b716-08de941a408c
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2026 20:22:40.6161 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ivvMD5ruwlgISMXeeP3XMWfdo/KnBwZYvwkXq3yKGBnVJYjshzT7JS18Zj7zAGh/Q3D2IBFvmTl0JWiC5GHbWWEAHRNpDQa+klq/ZKNLlYs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6188
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775506971; x=1807042971;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jlmp0OOx4Lh3vPPYdTYz74QVuYHbOQBQC31w1EKvkz4=;
 b=dcKBuNLeLJCezPBteOgjaEBH28LoxFXT3WmhVA57Cjzq8DNGirQn+irc
 B80a1AQPdhqLkOIVlaWNmLoMLdBkuADjibVVxgHMApWbFq7AfmhXoHCLg
 b6vhnSlkgX4Gx/wUocDHlLCXJrBxQcJj/A+avxbbui884d5J0sxl5PKma
 ULiJ15l75Y91UKF+8e8BjrqpE4tlt0jnJW9Nf3pR1QKzjq89aqtj9DbXC
 /Lrx3HgxQHdrBzalE/d44iDbdHUY74yvNAKpVOHvYz6MVdY0nnqQoMU1B
 1WtEpHpBi0SXsn/2fXwSGrDBKtGkQ5Q90/cN+HP3BDvaEV8zn6Wuh0t1p
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dcKBuNLe
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 8/10] ice: set ETS TLV willing
 bit in default MIB sent to firmware
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
X-Spamd-Result: default: False [0.29 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:aleksandr.loktionov@intel.com,m:anthony.l.nguyen@intel.com,m:netdev@vger.kernel.org,m:yochai.hagvi@intel.com,s:lists@lfdr.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[david.m.ertman@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[david.m.ertman@intel.com,intel-wired-lan-bounces@osuosl.org];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,osuosl.org:dkim,osuosl.org:email,DS3PR11MB9648.namprd11.prod.outlook.com:mid]
X-Rspamd-Queue-Id: BA1143A71E6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> -----Original Message-----
> From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Sent: Thursday, April 2, 2026 10:40 PM
> To: intel-wired-lan@lists.osuosl.org; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; Loktionov, Aleksandr
> <aleksandr.loktionov@intel.com>
> Cc: netdev@vger.kernel.org; Hagvi, Yochai <yochai.hagvi@intel.com>
> Subject: [PATCH iwl-net 8/10] ice: set ETS TLV willing bit in default MIB=
 sent to
> firmware
>=20
> When the FW LLDP agent is active the driver sends an initial
> DCB configuration via set_local_mib. Currently the ETS TLV
> willing bit is clear, which prevents LLDP negotiation and
> renders the FW LLDP mode non-functional.

ice_set_dflt_mib() is only ever called in one place - ice_link_event().
That call is surrounded by a check that calls ice_is_dcb_active().  With th=
e
FW agent active, that check will always return true.  This prevents the=20
ice_set_local_mib() from ever being called when FW is active.

It doesn't seem like this change is necessary.

>=20
> Add ICE_IEEE_ETS_IS_WILLING to document intent and use it to
> set the willing bit so the FW can negotiate DCB settings with
> the peer. This only affects the default configuration; SW LLDP
> mode overrides it immediately afterwards.
>=20
> Fixes: 7d9c9b791f9e ("ice: Implement LFC workaround")
> Cc: stable@vger.kernel.org
> Signed-off-by: Yochai Hagvi <yochai.hagvi@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dcb.h  | 1 +
>  drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
>  2 files changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/net/ethernet/intel/ice/ice_dcb.h
> b/drivers/net/ethernet/intel/ice/ice_dcb.h
> index be34650..91d6682 100644
> --- a/drivers/net/ethernet/intel/ice/ice_dcb.h
> +++ b/drivers/net/ethernet/intel/ice/ice_dcb.h
> @@ -52,6 +52,7 @@
>  #define ICE_IEEE_ETS_CBS_M		BIT(ICE_IEEE_ETS_CBS_S)
>  #define ICE_IEEE_ETS_WILLING_S		7
>  #define ICE_IEEE_ETS_WILLING_M		BIT(ICE_IEEE_ETS_WILLING_S)
> +#define ICE_IEEE_ETS_IS_WILLING		BIT(ICE_IEEE_ETS_WILLING_S)
>  #define ICE_IEEE_ETS_PRIO_0_S		0
>  #define ICE_IEEE_ETS_PRIO_0_M		(0x7 <<
> ICE_IEEE_ETS_PRIO_0_S)
>  #define ICE_IEEE_ETS_PRIO_1_S		4
> diff --git a/drivers/net/ethernet/intel/ice/ice_main.c
> b/drivers/net/ethernet/intel/ice/ice_main.c
> index e7308e3..75a48e5 100644
> --- a/drivers/net/ethernet/intel/ice/ice_main.c
> +++ b/drivers/net/ethernet/intel/ice/ice_main.c
> @@ -971,7 +971,7 @@ static void ice_set_dflt_mib(struct ice_pf *pf)
>  	tlv->ouisubtype =3D htonl(ouisubtype);
>=20
>  	buf =3D tlv->tlvinfo;
> -	buf[0] =3D 0;
> +	buf[0] =3D ICE_IEEE_ETS_IS_WILLING;
>=20
>  	/* ETS CFG all UPs map to TC 0. Next 4 (1 - 4) Octets =3D 0.
>  	 * Octets 5 - 12 are BW values, set octet 5 to 100% BW.
> --
> 2.52.0
>=20

