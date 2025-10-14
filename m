Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0739ABD7FFC
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 Oct 2025 09:49:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7966C6153E;
	Tue, 14 Oct 2025 07:49:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2Ek5l0-_qA0x; Tue, 14 Oct 2025 07:49:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DCC8D6153F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1760428191;
	bh=oseR10xs9knQ7b3pbM6lQxE9DnQ/YKkOm9DPxd6/xAs=;
	h=From:To:CC:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ANZ2IEMrcDB6nTUabqm8YxA4n9jGixc7P0P289/Shsk5xTfv5hgXT87YIilvsEINP
	 PZ5dqdUqVbEMWl3njC5qp+gAmzr5H02bKJ44ylrces9WRpwFsZW+sgnFXG+CZSI+WR
	 L+DgxtJiJjdvC5LrlIo9PdWbaKc/XwV8+AHE7pO5o0XA/TkxXlUPL4c+gibTsD3Nig
	 T0WLtdkfI3RNtzJXuARFRui1I/WkwzgzZZWIUu1rHFT015daCp/KxlcJg5eaqjTZ/i
	 czewEulegc9q1WtoDxYiWCyx2hJc4B7cEfK0EJOEKewAiy190pTCeQ2iDMN0RT+tsg
	 5GYW3UGAW6d5w==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id DCC8D6153F;
	Tue, 14 Oct 2025 07:49:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 8DB24BC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:49:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 744DB80F47
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:49:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id G2xA9Agm1F3w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 Oct 2025 07:49:49 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org BF00F80F38
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BF00F80F38
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp1.osuosl.org (Postfix) with ESMTPS id BF00F80F38
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 Oct 2025 07:49:48 +0000 (UTC)
X-CSE-ConnectionGUID: J86Uz9IWSi+PFOkZc76dGw==
X-CSE-MsgGUID: AJtJkvOhTp+ydPtxfKJx6w==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="73260201"
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="73260201"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 00:49:48 -0700
X-CSE-ConnectionGUID: F8sKcgQeRsOkRS6Qgdwr4w==
X-CSE-MsgGUID: u5uwocuzRmSzDW1A8dI6yQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,227,1754982000"; d="scan'208";a="205510491"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa002.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2025 00:49:48 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 00:49:47 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Tue, 14 Oct 2025 00:49:47 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.68) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Tue, 14 Oct 2025 00:49:46 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NzEzdQpdiKhuk6SDmYIHeZVLJ09qnM/FaltOt7P6Ckrqfp8UVYfIvYKrvP7pei8ZsCfSpvg75Ccx2MNYDa9REhor1Er2wvrEW+nnUP5wU8LnKqGr2Yt2mgLrYwboKn+tNsuduEZJO5ojEzI7t0sFyilPRv45bIb3nUVAT/l+8vby32qtss42lw04f+b/jWQKZdCS0FtgI3gzeUCBfqDGhfrDLkAYH9QxkJLy4Hg1NW1M3+f3XEd4LCCB/Z7g9oCRhW1w8y8gsNuAeTK4GQ4Swl6muV5xI+FwItrbHVmAsQyiafSxrRl4SDD9F1BVGabVKSMajFaJ+lXVllO9zeNgOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oseR10xs9knQ7b3pbM6lQxE9DnQ/YKkOm9DPxd6/xAs=;
 b=bVA65UCsoLLE/bx8WOx4Oxv8N8kYopYtd6Sh+NWcyaT6UGLw4JSyuIU0/7U5dehrpN/Z6J8o4OII4zneMrp397+8/riz5U6BnQ8oiGF2H9KipTmTsAUSp9Jlw087otqANd1cXfyhB8uAShP7+coZywkb/dVXjD5JUPGPJglT3+vWKwYgDqHtaACbn2mx3yfxXr+t9PEhdo99Ah2Q1OfiNRKjXqUOcs7xZl6hHwsR25gAVpNw9epcellVAOIB+DkTyfQOOK6MAtZJvulJQ0qiJ7M/0+qLfhTU2d747RonKokYmqXDmJ/qV1c8PJBArfYI6daXv737InBlTU3trOJBvg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA3PR11MB8986.namprd11.prod.outlook.com (2603:10b6:208:577::21)
 by SA1PR11MB8253.namprd11.prod.outlook.com (2603:10b6:806:250::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.12; Tue, 14 Oct
 2025 07:49:44 +0000
Received: from IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408]) by IA3PR11MB8986.namprd11.prod.outlook.com
 ([fe80::395e:7a7f:e74c:5408%3]) with mapi id 15.20.9203.009; Tue, 14 Oct 2025
 07:49:44 +0000
From: "Loktionov, Aleksandr" <aleksandr.loktionov@intel.com>
To: "Hay, Joshua A" <joshua.a.hay@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
CC: "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v8 6/9] idpf: remove vport
 pointer from queue sets
Thread-Index: AQHcPJadH14a5onXj0S85bvNS4nsdLTBROJw
Date: Tue, 14 Oct 2025 07:49:44 +0000
Message-ID: <IA3PR11MB89864455CA000E7C69E69B66E5EBA@IA3PR11MB8986.namprd11.prod.outlook.com>
References: <20251013231341.1139603-1-joshua.a.hay@intel.com>
 <20251013231341.1139603-7-joshua.a.hay@intel.com>
In-Reply-To: <20251013231341.1139603-7-joshua.a.hay@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA3PR11MB8986:EE_|SA1PR11MB8253:EE_
x-ms-office365-filtering-correlation-id: e400fc3e-4639-4909-dd4a-08de0af63d66
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007; 
x-microsoft-antispam-message-info: =?us-ascii?Q?wy9buInlX9+nf0iC36he5ILT6y/wp1xUXPosCeSoUGOWMzZwHY+5/swroKqw?=
 =?us-ascii?Q?UeUVqCIdTurOfiZqTr4ifzidXcFrNtG3O518THG4Q+NN60IXsC53N8+/cp2h?=
 =?us-ascii?Q?1BdoDkERmwUQBz6xKXVMkIF4ZZQHjitBbE1GfwsRxzvsotYrdiXUoaY50QmC?=
 =?us-ascii?Q?a0bFq9K27jeeBhOwt24dCxIDCxDuU1vaxMnE1bbBUFJYWeYFdxlN5VrCYPBo?=
 =?us-ascii?Q?ylfN6cESeiLzeKKVsJDKAlK+hiUmDNzNx7HUXbtoppdxJ2x1xScF8VIfqbKt?=
 =?us-ascii?Q?SjnoBS+ZZgd9iNzslrjg6Mld6PO88L8v6RcX5xKzo9LwlmxkLEcp35mFWGGU?=
 =?us-ascii?Q?lSLtlotNaPI20yE+zvCrsnpuxhEL9z9Dp2hLnLJegC6ssrVyeTcfaK6Oot+v?=
 =?us-ascii?Q?SC0Mn95WhJ4vmED74qC4R0bKHpAE0QeDwLLc2WIK7yDgzR6t4PAEMmb2IWD7?=
 =?us-ascii?Q?rHPVSktf6911FbtFDApbuMUJfuUaGK+9WWKSR9fYQ7exdY/er5xL3QisItdd?=
 =?us-ascii?Q?utVSRmeY7PTj42ufKVk7vag4ky6cRYQqEPCXKwHkhLmZtE/JXdNJcLLaEYAT?=
 =?us-ascii?Q?jYc/bWuNku/5f3jWpPF6I4ZCXFImIbNXem8LuO91WHsrlcxUdnGZBjLxxCAC?=
 =?us-ascii?Q?KIuv2JRR4s8/x7Je3QwqEGrz4cCVDc/A+/F6+suh/zbc33xXoXF20GaTNkuo?=
 =?us-ascii?Q?vsWAGPELf2EyzDYWh4HOptZsndmf6PDdCfKaUwWs3mk8Ft3eyWei5Bsz3xvu?=
 =?us-ascii?Q?yTRdQfouSIE8wS5NfX7Nk/whCB6zgmRZUL9k9KiOs650hMPXrH3R41grfKmy?=
 =?us-ascii?Q?eApbr3tjDMGkEgL+o5aEshILJwh5lYLuCX96PUB0MziOvkf6R1MtTGAl72FQ?=
 =?us-ascii?Q?Ws4OCRrDisO+21/kPALTmgQCRFgPHJe3LqCgaUwnmm9pwFbz+9hRmav0JzRD?=
 =?us-ascii?Q?4yfAE+OLixBFV7HHbdFKJ+hyDGCOn+v3W/dUSMBTVKC1bcigaE3CHhoebrxh?=
 =?us-ascii?Q?DXYqUPPegDJSQzJPqjoL7NY2n8XafiNABnlp+P5tu08D9nxF38ojL3DtL4DD?=
 =?us-ascii?Q?D2jndbG3qp8kMT4o6HrBtnO5aW78jM/X4DBjexknz3COMxsr9ZrZ0ql6+NrG?=
 =?us-ascii?Q?3tc61d7w8Ra2lvPpBTVcxIe4aP+BzCVNsFRk4iz/K9u5T67PJe+OepTiX6VL?=
 =?us-ascii?Q?s4egNlPBWL9V84IWRrBjKhuDSn4c/ESBhY0y0NzVHwCiVNOozoffXBGJB3h6?=
 =?us-ascii?Q?KSF0Ps5iVv04N3QdJEj4DA0NwD8KJUmZ4wQi67bEP6nzXW2TQjy5wY5/ztVG?=
 =?us-ascii?Q?dVU5LnmO/Bht0HZWmnMsZSzhw9SParXnDqXP2e4zKubab50HqIyUNO7oU6xY?=
 =?us-ascii?Q?EWwvCUqUzCh64lmbDcZKTrj8eNI/gRzqnONqSk9nLtzRhxeJ/5uo6kBF6X8/?=
 =?us-ascii?Q?Fu5PbTFzTa3dRtu0OvKoDg8x28YHjah16O/TQ+/O9YFUzzwzxdol0xhgXgq4?=
 =?us-ascii?Q?daQvnUNyQs/TBmkG7RV6uJfMAQ+wLlOKTFBg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA3PR11MB8986.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?koJS8HOc5mP4pkRVhPW4e6jrzzCZiYxgE+8/aWCuLLmAlV3xg2M/hL8H+HOr?=
 =?us-ascii?Q?vVqOViGMfKGXf/koQ80w5hcNNSnnT/qqeIohRBskggD1Ejy2cg8s14TYF4QD?=
 =?us-ascii?Q?Ol8JmyrZNN1q8T4+txGuBXUvtnRE1rm91tKY5ykMRhc+SBAk8GmpoHLQEwWf?=
 =?us-ascii?Q?H9c/eXRpS0x4Pa1k3W7LDeHjofMssyMNaBLeCuUIZzFA6mlMaGk6Y/5kotd9?=
 =?us-ascii?Q?NZqRkLP+EF9z+y2/9F9cfoWzKTGsLIBsVqUwXeL15Tav6QOY5pZQKwybZDe8?=
 =?us-ascii?Q?HnPEmllKHBMNt9F8rgACbVXU8qrUG0B4fqktNT5Yuyv25QpxdM4xHyBkCxdD?=
 =?us-ascii?Q?S7bIQCXrDazPBoz5IWBfXOhdhPFB+YftGn6/3oM/3SwdsMIOyBVCRczc24Mi?=
 =?us-ascii?Q?w04M6QzYC0godHKt1YwCJRrCpg+aROGeDQlWjv/LUo4iokx47dEumKfGr/8T?=
 =?us-ascii?Q?y2gaNtkcre5LcjnVuUZfKp0kF066OgTrinhRWfeahn07Rsm4cWA9lgfu6MGO?=
 =?us-ascii?Q?Nv6ByUVRsiC63UQlcAPSfyHnt5wT7Wp8PgNJ/SzqIo8fGdMRJhpL/4BBTZw5?=
 =?us-ascii?Q?xE7CITx3kssxbmUPt9IdFushtLU9kxUOj/xO9kHfBXJIWEc2reLU2mVTk34z?=
 =?us-ascii?Q?/zYS2BTeIqk3zd3xmI/DMJatsU7hbitQbcyfSNdmWOyV8IvR8Q6QA7j/4Y4K?=
 =?us-ascii?Q?rnjCeIZm1APbVUwb4D7VUiUTTWbv9Xw6HfXyi+Au4TMxGS9KmMC+N19ohwxA?=
 =?us-ascii?Q?h+1LOgbgaxNj3cNwo1HgNFRkOV4n69BgcoUijo16VEbOrUxC948PPjfskHBu?=
 =?us-ascii?Q?QKigh5I1KF4SLeDX7GtGvgl7Xv8Og1K17b/18KK6UBdCWPok47BhcBjGzDR+?=
 =?us-ascii?Q?zGmtPxefsdiakmJ4gI8yWQorUcgskJuO/szIrM9dE6WHbtFtQPSOt4lVpV3j?=
 =?us-ascii?Q?f5Xp7c/l9ZuEUyy+cRqeMQvAOMMnRTsdxMGS0dR9Oxkhq2G70j2k7hG83fEK?=
 =?us-ascii?Q?qrMaVpkqKbJSxTT8NrUxutUs4bY3Ol562TAEVT7UQhj0d8MvKeGWEOG1V62h?=
 =?us-ascii?Q?yiomO7v/NbDDD+x/oo10DyaTCM8QxIJkjzoJW4/VClYn/J5B/qHjNQyhsehw?=
 =?us-ascii?Q?CF9t8pWpzStT10GI9YyVq7VCOZ/Lvwi/6ybktVDZ3YINFdYC8I/cvnn3jW+Q?=
 =?us-ascii?Q?3WAoUywVa2LqAj9pIqVdX6S+C5z4lZJ5DI8DCyCaRXWL2ZBGvcSQHV0IidG/?=
 =?us-ascii?Q?QXW7pnCymOF6bXK7tyLn7gYchWiZA5o0aZIOr6IQFqRUfln4aCKQEz0O3VOp?=
 =?us-ascii?Q?CC3VN4nR8CQjTn1G+wsymq1LMv384fksTeaRXjT0qAbMkPdEYIHnz+vtyoWu?=
 =?us-ascii?Q?MG/G9QrrvdtWS8ThoFf2dIdlyAlVnAZev8dfhIlaXSJnVZ7litOKQO15ybmp?=
 =?us-ascii?Q?mfh01KPXc7Jz+eNAOy8WQcFbvUE52dn2LyMMCH62tJL84uzF4YT/uBva0apg?=
 =?us-ascii?Q?VPBoXMdoDa5dFD/OY/mkwIHKSKonQO60eYp6In5flhet74ojSxOo3lsxZxoP?=
 =?us-ascii?Q?3H5hsPS5/9OWF8OS2iwoK0H/C9dy8dClswPdII5YmIrOG5Qt0Gfy/pqaxCRZ?=
 =?us-ascii?Q?Iw=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA3PR11MB8986.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e400fc3e-4639-4909-dd4a-08de0af63d66
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Oct 2025 07:49:44.1378 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WWsz128deoSARQkRpjVNQq+a4l7wOUXpoY+w7qKWMbZhNeLsN2jEMr3aBDfcw1eEwCc8mDBtcLK8D/BsqWBHmQi8smoJajL3ZO/QhRXItdM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8253
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760428189; x=1791964189;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oseR10xs9knQ7b3pbM6lQxE9DnQ/YKkOm9DPxd6/xAs=;
 b=DUud9+9QUhN60qA5f4yyEZeLpfgVUiCMboDYcK/AfWK23w0KGK6JEJnA
 NV9YO9sqAwmhWRWx5O55ybDhn8B8xnIVd9+ZlHe4YUq17qPNi3IaHJyC+
 fWfD9EyAASjNxaa/qCOyy+PafGmFuYM6U8WLw/vOCkdHJeJlrOx/U7Mvi
 AEHSrn6We/LyvwNDJhTlz218H6c+o6TVy23WDQdQSvygdzvhzyI71atGF
 462NXOMDckeJpXN/6HoWsmWVKGnOasE4R0Wb/CpgiV/MxREAF5VxjP5oo
 qIRWKtSeaPh60aortOlRIbpZXPs2g26f1qBtRhkNhwJ18reECAqfIDQyu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=DUud9+9Q
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v8 6/9] idpf: remove vport
 pointer from queue sets
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf
> Of Joshua Hay
> Sent: Tuesday, October 14, 2025 1:14 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org
> Subject: [Intel-wired-lan] [PATCH iwl-next v8 6/9] idpf: remove vport
> pointer from queue sets
>=20
> Replace vport pointer in queue sets struct with adapter backpointer
> and vport_id as those are the primary fields necessary for virtchnl
> communication. Otherwise, pass the vport pointer as a separate
> parameter where available. Also move xdp_txq_offset to queue vector
> resource struct since we no longer have the vport pointer.
>=20
> Reviewed-by: Madhu Chittim <madhu.chittim@intel.com>
> Signed-off-by: Joshua Hay <joshua.a.hay@intel.com>
> ---
...
> --
> 2.39.2


Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
