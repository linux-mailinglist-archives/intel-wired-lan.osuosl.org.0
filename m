Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A048904C0E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Jun 2024 08:57:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6BE53608EF;
	Wed, 12 Jun 2024 06:56:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 9-3PzsSfyIRH; Wed, 12 Jun 2024 06:56:58 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BBBD4608DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718175418;
	bh=hihjJrHQuY05Czf0ErAHdT6Ghlw2Bs9QrPW2RjlG8rg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=J7ol3E9BAE+raOG1ScHFc9c6vAJH1HhGaoe/XR23PUOMg7ghM5zC4qF4EQRh/tu38
	 LrUsS7x7/ekMn8Jr4WXTO9mJOVsQuNV5VRrhVB+iqrf5k/lf8zSPV/yUsPmBuVRdEX
	 G1sCEcvzHKw74js525LkGZwWmlykVfs1zh2wrn59w7emnOPeD+iA37VIt2XMLwAVvp
	 khmiMouD94JznQYCZo2qmzKHu/LcDhFjaybjSCQQhIuSISx+RPz+qm222hQDl5EB/8
	 9dsV7BG8MN3xqm47awCCZkKWuDvdz6Hr/admQSYs+hpqiDLF0uCzKXx5s0fAIIa4F9
	 +XcJLsL8PDWrw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id BBBD4608DA;
	Wed, 12 Jun 2024 06:56:58 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8CA681BF37C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 06:56:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 79354608CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 06:56:57 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id j4xpBtMvEQxy for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Jun 2024 06:56:56 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=larysa.zaremba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 8204A608AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8204A608AC
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8204A608AC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Jun 2024 06:56:56 +0000 (UTC)
X-CSE-ConnectionGUID: NheDNX5TQ2+icD4WnXr/DA==
X-CSE-MsgGUID: JMVziyyXQRO3aDBYVzLxJA==
X-IronPort-AV: E=McAfee;i="6600,9927,11100"; a="25598233"
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="25598233"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2024 23:56:53 -0700
X-CSE-ConnectionGUID: wGYdnDK+SUigsrV0FtwFDw==
X-CSE-MsgGUID: rNB0bUk7QWSM3qeBlYV1sg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,232,1712646000"; d="scan'208";a="70892884"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa001.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jun 2024 23:56:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 11 Jun 2024 23:56:49 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 11 Jun 2024 23:56:49 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 11 Jun 2024 23:56:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OFNfOW6PXFuNNGFUJDzzBj0+4bUEpOSaSIR7rdx0dwrhMnntXkV2vrZkqEXC6cBip/cGegwgPQ7UDJDNuafKQRQevyquF6yR9s/+gHJdBXFYraZ1yLBPnHzmfT0ww3rOj34bgHqGhMQQoBt7Mjn1jYsEYvtpCh0iiUxYDLra20bQDaQPnxudxwsk72ERNdbTFlbQAYua/nmmxB6A2h1nyTedV0Ai/MJgSQdtHQA8MHfijOjAvl9D9nVPGa3CBLBvvxtjXfpNCA7iQXViwKE0g+qM1rscQRisbDNwmBQT4aWzuYTRzFT0TJmYfyRInKASVKTc1q3xE/T5fTeXLWhd9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hihjJrHQuY05Czf0ErAHdT6Ghlw2Bs9QrPW2RjlG8rg=;
 b=HkgtSTqsJ8YNA4uDZ8HdjpmA1S2cncCR8C/y9eJl3v1a5+M82RVlD/7aYtc579oA31w28nHXcLs6WYRJzeLxKbx65NBo4GzJY+YsVlC4Qvyn/dalvDDNUQjU0n4OZMLmGxk+Pl/sJ8Ao8x/eCwYXjgKCsUbloRPT7iLkN3hqEhzGoK8aCTCv2rPu6/QWB+FSysUHk/mIZgZOAyi5mRhy4RVwI3SvsxV6GqwTkWaVXT+qhkiZjmYQ2YvSaNpbqS6xmZuegqUGvqSppc2yF9Lr294ns+ZQec8/G9b4Ljl3YlOoUx4EAMyOqyRG4x2Ecmp1mQOv372J6AgowjlCVDmSGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by MW3PR11MB4684.namprd11.prod.outlook.com (2603:10b6:303:5d::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.36; Wed, 12 Jun
 2024 06:56:48 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::399f:ff7c:adb2:8d29%3]) with mapi id 15.20.7633.036; Wed, 12 Jun 2024
 06:56:48 +0000
Date: Wed, 12 Jun 2024 08:56:38 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Jakub Kicinski <kuba@kernel.org>
Message-ID: <ZmlGppe04yuGHvPx@lzaremba-mobl.ger.corp.intel.com>
References: <20240610153716.31493-1-larysa.zaremba@intel.com>
 <20240611193837.4ffb2401@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20240611193837.4ffb2401@kernel.org>
X-ClientProxiedBy: VI1PR0102CA0106.eurprd01.prod.exchangelabs.com
 (2603:10a6:803:15::47) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|MW3PR11MB4684:EE_
X-MS-Office365-Filtering-Correlation-Id: 9c1736f1-33c6-4249-3fb7-08dc8aacd434
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230032|376006|7416006|366008|1800799016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?QtW2rvdeTYgEr3nlEjpqatTF61b3U+Dvz66cwXoesaiCtnBJ4uJtxNAK79AS?=
 =?us-ascii?Q?u+wdMX7i3uDCnaEgErZoUZf8nxFXVoTL82ynfXPlilbLsXCR/i0aY9TZwSym?=
 =?us-ascii?Q?xRXynWL7S3l8B/eksOR3Mr05LeSr/ibDISBtX0GVc0CmdcibuWxwOt+o1Gj7?=
 =?us-ascii?Q?SUFombFP3z9jt9NmSa8LsJUnitsG28zlH0bsFaO+7qfIZR1ykDbfMSclPhIN?=
 =?us-ascii?Q?R6jwn12shAKbUo38ILFfSfMqdDtKRdNUq4WaPl8JMbGrS6LunxFLdIb2BHAI?=
 =?us-ascii?Q?dDomdNu7LkFpjKO2h4MndH+eZtANphZil/EHTbQvn/EB49mizmidVTo3zlNf?=
 =?us-ascii?Q?QYEQG9EjkyJ4jibx60IrEToMLEyvS7y+5IUOjlziBiY4XbZHKXy1YRNltlFB?=
 =?us-ascii?Q?u0PdGeAVGAgkB+iexdRky7An+OzNBRzgDXFwFFI2+6okQCOWtFECJBMwKOSZ?=
 =?us-ascii?Q?24W3Nzpl/vY2o6fz3Stb8KzoID7g6cEOSOCBpVj3wXO86no8GVZqSUsL15OX?=
 =?us-ascii?Q?xx0m7KxN1+Y9NbXBCJnRl7Mz1JBuZERRXKrgpFAs7lJI6njnGhHAktiy1/xZ?=
 =?us-ascii?Q?rOi8YRYWyz7gwZHdCMeOZMuipPiK76H7/V/zo6B6QzPAjMofOegV64nclgN+?=
 =?us-ascii?Q?kCqiQpdH3c/SQwxE4rczakEOG4NQQ+6uu3OBaa7u9QZgaqB/CDwOIShJkU5+?=
 =?us-ascii?Q?XAtCu5VaUpjVx0+KLmEb9IR+PHBqt9VQnuj1gphJg0lq0HHDxn8bR6zJZCFr?=
 =?us-ascii?Q?CcCb55/fXACHEFDpiDX1rqEBJGYyq7mlm3edp31+iRXEfFkLO88MJPQ78rIE?=
 =?us-ascii?Q?xK9jfoLQ/evE7URNo1cH0XrwiRBgfNaXM4xZr8FtRZy/G+us7wgE+Mfdcc4V?=
 =?us-ascii?Q?sH5tfnE7Yoe0RSLIvTxakdBcqiG7zr31LaYOyt/6cxtx1Zk/vojxafJXrEwr?=
 =?us-ascii?Q?/FWhzOz7J8YgUbZ+UDEsgG3Lu9/3uAtU3YpOkOog9vhzEq0TXYG9CdX1IJ0f?=
 =?us-ascii?Q?k7OQMJb1g93tCTI1PykUsIH5iBxjVPQ2FNkWOFuk/zUnxF2SfMgE2eYYbrjx?=
 =?us-ascii?Q?9LP1Gas/ZtI9Ib8ho8W/WEqP23RbH5HfkOJ7zFGRuZxws5v7fc0DaM+xdI51?=
 =?us-ascii?Q?RGZnA1zRliksWCiTbD2eqbCWEQx5yeIS1js3xyzbvEnmUxIVsZSLiA/Fkc5B?=
 =?us-ascii?Q?9jRvXEzwPlQ8kaeftA9LJgIIPmyAa4v5sUC8Iz4hDTuan5D07J6fh6At8qRG?=
 =?us-ascii?Q?IsRUmDlMa8jGgpXl3HxsoAV7ugaMsgNqPN3cKD5Z1Nmyn/c5Wcw0jUJcxIDo?=
 =?us-ascii?Q?D84ZryUbLmYNbW3EXihHNgb/?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230032)(376006)(7416006)(366008)(1800799016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iMG/zpBmfGhJSMMb7ynyuwPUBXFrLbtM9aiKCEViXueFs/p2pMkyEhJ2V0OB?=
 =?us-ascii?Q?Pky1sw1+Xdp6Hd3torm9z2szDHt3FjKf54UTtxAIcFm/O/BjLMMPX8eKths8?=
 =?us-ascii?Q?eJ5/Xu5Mdsttpe7/Bb2h9BowhRbzBL7nshlVcQEpnbqFNik6TY0bHy5WZD+y?=
 =?us-ascii?Q?jf7CjwG/DfmVuuyG7ZLEWGgKS9xGkJYZ/PZLZpfR4dngTNJr9mQ8rK6XJB+K?=
 =?us-ascii?Q?7SxwScT18DKIwc5QcrU0pznCwuzbdgXw4KeoiQBoVUbP0fznGq3oj9TbuZw2?=
 =?us-ascii?Q?4BoWz4JIbxhh4Kjx7gNMsqz5Rum7CehsUsq8fSKKktx0fJfxoFKKgLI6gg4e?=
 =?us-ascii?Q?7jwS1so4yWzJL6jZWRXbydE3R+1AnDO7uCvqEX3qo9TbX3R+4Budp+kSQJgd?=
 =?us-ascii?Q?5FUVsIYKXeSKTWNrBDbOW60sua7BnpT+wa/WayC2DT7AD9SxJNx6BPL2Fqjy?=
 =?us-ascii?Q?vmLUlH48w/JKSsloGXdOjKR0tceHIjUzVBmqjMrXlb+DLMoKtq66jLIzsJ59?=
 =?us-ascii?Q?ijF06PEpgzxtVQk25KjI02UDcBI0Ohyf/45ta4ilFythNklEUp1F2WC5a9ve?=
 =?us-ascii?Q?9JkKQatTdk5TgfkDqcXE15kfXxf1XDM0NIcTV2xz4U5kmGP4Fa8r9i3ooq0Q?=
 =?us-ascii?Q?etAqzs6Y+17sCsM0s5xMfu80BZ3f3Kqt7JsPjQkyGgWENCtJOQ59/6mtdCh2?=
 =?us-ascii?Q?K/NRg5Hj2hui8sqW9WgVB/WUEmYYMjYReiOAioz1pTFKiXTkElVC1cX4VeOI?=
 =?us-ascii?Q?oS3d8mEBZelkIL1WjddGyQKwPNT5CodYXlODocv6Wcf6BJ7BzEl50MXHWZMw?=
 =?us-ascii?Q?uLzX7dI9b7/aHZ0lZvd55mMtg1iR4cBdc8EIImxm/TWlcJCRGyHZ8xIzb6O/?=
 =?us-ascii?Q?fi5sOrHfjVVTsVwQ+njxk2eNuVQdPTW7BIcRTmuf7LWt1fyIYLt41XHujMO6?=
 =?us-ascii?Q?wFyIwv/k5jBF46YuPQE0zDC0tNbFFEbw5YtR7fM6mR0gfXDnsR49vPI9CZ1R?=
 =?us-ascii?Q?Luw2pXvhdt2sy8ROzfzXfHXNZFWnFkb9G1oIjETaV1DG466bx0Uk+GyOtcQU?=
 =?us-ascii?Q?FyWmwqmQTAOyccgruXm09xhQ6jdt19g+3q5qu8RqEFlejVF9wlVJJ1tbGmPj?=
 =?us-ascii?Q?P8nKiQTxV9PuA30A5vMR4O/A3eZ1s/HokL8vhqshWcDC9LnOY1wah9xAkx/y?=
 =?us-ascii?Q?tQsbCOKqU4Bk0sWlPiArGuZMLrUE6aeod4BZuWGmtE1LOACoD4OuNI5xwo78?=
 =?us-ascii?Q?+97GGDw8WH2QTqLAZ1GM5V+jTP3HJN0x65CzIw0r8Mv0JbxktMHsMOmhG7Eb?=
 =?us-ascii?Q?1AU/i5Y1hmID3DqYQM8OKGGHdHANycWhF1trpHrvk8DQcazd69cmtdAnAGVN?=
 =?us-ascii?Q?pOiDc/D4NNtWSB0Ol91Q//twY1nnkp+wfbV46PrlS80E4PDpa9JjHv3AANgQ?=
 =?us-ascii?Q?VaL51kXcKbXTMe6ddLbysiY5VzlWdjfiVOPlTcnGXTq37VJCkCtRQLVUQ2Yn?=
 =?us-ascii?Q?kfdLxwzgyHeCu4MN99IPX0/0sK6ZHwIcbWj80WssWKpeVDyGw/dl3lAvxnS7?=
 =?us-ascii?Q?aM/l0j1V8cibEYQKkPVQXIZqO9bwBtlCLGYzXM4AceLklvmfo27iXOwGeyWT?=
 =?us-ascii?Q?1w=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9c1736f1-33c6-4249-3fb7-08dc8aacd434
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jun 2024 06:56:48.0334 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: NHVW6vNwowt4AJskQSVbzPBT3vcNQmR3Oh7cXruTwYzqsUX+Y1F2Q151wXHKOwpWWPiE2jwslL3X6877zm4DAEXewsgAojIcBxwOklY9VmI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4684
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718175416; x=1749711416;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Q6Bpq+UDSVaYK6jy83BBjrExez91fq30QuN7pMouCeo=;
 b=gjiE6Jq5cEkSpqkZ0IJc3g3St0vHAsnNDoTpECrBLxV+gMfXN6pE/fd7
 gO7wXgPjLvipdO1GzETVOscafvSsX2DucatgNG10Zeh41QW16yGH8NLqd
 /ip6G92MgAaWvGyWZ0B7O969+rJ51DnSJfpU3Juc1syBhkTCF002oOq3D
 aoegnBjsXjLF22f7JFhbLT8otkW1J7GarJRYA8ZSeavCPcMUQ/inqoVNb
 lA9wGFDPUVgunBZXfPpmbGNRa3N7WeyXVN23RypMQVScit3/F4uL9Mjdl
 1qcRfWyZIGJZ2LHebSu+ViUk4qCBzrTpWhXd6y1zshX8jJIwFI5ymWbYC
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=gjiE6Jq5
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 0/3] ice: fix synchronization
 between .ndo_bpf() and reset
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Daniel
 Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 John Fastabend <john.fastabend@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Eric Dumazet <edumazet@google.com>, Michal Kubiak <michal.kubiak@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, magnus.karlsson@intel.com,
 intel-wired-lan@lists.osuosl.org, bpf@vger.kernel.org,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 linux-kernel@vger.kernel.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Jun 11, 2024 at 07:38:37PM -0700, Jakub Kicinski wrote:
> On Mon, 10 Jun 2024 17:37:12 +0200 Larysa Zaremba wrote:
> > Fix the problems that are triggered by tx_timeout and ice_xdp() calls,
> > including both pool and program operations.
> 
> Is there really no way for ice to fix the locking? :(
> The busy loops and trylocks() are not great, and seem like duct tape.
> 

The locking mechanisms I use here do not look pretty, but if I am not missing 
anything, the synchronization they provide must be robust.

A prettier way of protecting the same critical sections would be replacing 
ICE_CFG_BUSY around ice_vsi_rebuild() with rtnl_lock(), this would eliminate 
locking code from .ndo_bpf() altogether, ice_rebuild_pending() logic will have 
to stay.

At some point I have decided to avoid using rtnl_lock(), if I do not have to. I 
think this is a goal worth pursuing?
