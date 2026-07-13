Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id hl5pCiCzVGrHpgMAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 11:42:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id BFCDE74969F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Jul 2026 11:42:54 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=bxwIobwA;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none);
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.138 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	arc=reject ("signature check failed: fail, {[1] = sig:microsoft.com:reject}")
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8D9FD81021;
	Mon, 13 Jul 2026 09:42:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qVEbfqvV0cdP; Mon, 13 Jul 2026 09:42:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0A7318100F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1783935772;
	bh=/S8XEEsfSt9lHJOgz4x/muO6ijnCNHJ+tYjU17rH7Yg=;
	h=Date:From:To:CC:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=bxwIobwAP4QOPNRXdn52WLIyILCxC6NcVByXldtAh2SZr5N2evCPXaOM8cN54b63P
	 uUYoj8Wqe/D3dYPqEdz3mHyAJ3fWeV2I5xskHrXbWBfW8QewCdvpORVNMsOvhRlbvv
	 xGEiImALELB132UXe28OdJSUKuZ2OYVVBlC6d3NLScot4KuSJgEBsCFXJOpGAYL375
	 HFgcRR8FJN6XfA353x8YKByCYqs0NKTlkeJFOcpKPrQlKVv8Eakijnp4smHsB3RxTf
	 r162XfS96hlfb6bdzcd8qFLFuy47CBDhD4kJ+ZbOv30dxor2lklUk+0hdN5uA/KedS
	 nSsm+i+CAhwlA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0A7318100F;
	Mon, 13 Jul 2026 09:42:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 8CE35128
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:42:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6B0756060D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:42:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ApZIDIRz4K3e for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Jul 2026 09:42:49 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 89B4E60717
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 89B4E60717
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 89B4E60717
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Jul 2026 09:42:49 +0000 (UTC)
X-CSE-ConnectionGUID: a5xmZCWBSxifqI0QPgRrKw==
X-CSE-MsgGUID: A4nVUe0RTVyqWNN2YB/gyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11841"; a="110083674"
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="110083674"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:42:48 -0700
X-CSE-ConnectionGUID: JBOaLKHkQFCRgAkbm6a2AQ==
X-CSE-MsgGUID: 52Pb8zXaRgO7F8+UtdjifA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,154,1779174000"; d="scan'208";a="260396788"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jul 2026 02:42:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:42:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Mon, 13 Jul 2026 02:42:48 -0700
Received: from SN4PR0501CU005.outbound.protection.outlook.com (40.93.194.51)
 by edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Mon, 13 Jul 2026 02:42:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=DRk8jLcKQ5Sins0vwc2l9pGNKndqo5FBOVIL50Rg4uu6s57HmI56RcCTt1mR8KRjRkj33A1R3MlxQ3eo0HxQX0y2PK4bzAaSzBLC2rOlbGAq67y3gmZZFfOx2HlzXFcOHGRtTD0H4DmXMe5MuvmS6Uq7N7zQorvCy2R2YWCx2ek56fxyNFpsTolR3llqOG4PyHuBkfh/f6Sf2LyI22+rHC9BkXFiih3BePVoQoLNmsgiVZpGFbJEu3DfBso/+NyBqz4sedg66YIG+4PZ1zfkfMQL4F0YaJqu+0u2IGzMBZxD6IXdMPy/y4/M8dcS8uMtAZAaCvy+d8pIILKmFEk8DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/S8XEEsfSt9lHJOgz4x/muO6ijnCNHJ+tYjU17rH7Yg=;
 b=iEgA5j/ViLK+iytUpEsVXcEL2OxpZgfWoNNRDvLdRFQJzns88aqIsXQ2A97MScDsB6grIVurT/DLwzgjCDNNB6pn1o3L3vrtAnBe65MlMHdAFXjybzmyovFkb5tC1euijiKVmRlplsBxqR+wm7peAC8sN2IVKMgNl9aGjZVS6rlIMV779e2XToypmnadK94JKHiprqjsE1MC/mmKRIl8W9/6aXvi81V/NAoQw7JwgiUuMj5MnuA3THUC+MOy7re8F5VReP68mGIC0c+sPEg3jXQWez1jOBmaab3/sy/Z7oT0X7CnDH4CtvG3tNvrUhbhshrii8O10/kQGGK3bSTB+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA1PR11MB6097.namprd11.prod.outlook.com (2603:10b6:208:3d7::17)
 by DS0PR11MB7580.namprd11.prod.outlook.com (2603:10b6:8:148::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.202.19; Mon, 13 Jul
 2026 09:42:40 +0000
Received: from IA1PR11MB6097.namprd11.prod.outlook.com
 ([fe80::61e9:afe6:c2c0:722]) by IA1PR11MB6097.namprd11.prod.outlook.com
 ([fe80::61e9:afe6:c2c0:722%3]) with mapi id 15.21.0202.014; Mon, 13 Jul 2026
 09:42:39 +0000
Date: Mon, 13 Jul 2026 11:42:34 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: David Carlier <devnexen@gmail.com>
CC: <intel-wired-lan@lists.osuosl.org>, <netdev@vger.kernel.org>,
 <anthony.l.nguyen@intel.com>, <przemyslaw.kitszel@intel.com>,
 <aleksandr.loktionov@intel.com>, <advoretsky@gmail.com>,
 <stable@vger.kernel.org>
Message-ID: <alSzCokS7scCoza7@boxer>
References: <20260712132242.223254-1-devnexen@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20260712132242.223254-1-devnexen@gmail.com>
X-ClientProxiedBy: VE1PR03CA0034.eurprd03.prod.outlook.com
 (2603:10a6:803:118::23) To IA1PR11MB6097.namprd11.prod.outlook.com
 (2603:10b6:208:3d7::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: IA1PR11MB6097:EE_|DS0PR11MB7580:EE_
X-MS-Office365-Filtering-Correlation-Id: 9bd893a7-ae66-4238-e1c0-08dee0c3144e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|376014|23010399003|366016|1800799024|56012099006|11063799006|22082099003|18002099003;
X-Microsoft-Antispam-Message-Info: PtPe/lxFYfBw9ZFFB4ZtqR0s7pAMDA21Nn1lB3cydUe2I1ADVv/DJFYV6oh9qf6NAmQItlhp3uYIJ1qgEYOw9aGYZG4jnwngxtC3zsEvwWaGfphvfBMq8Mn2qyD6ufwlgtdGSMuA/f50gVtl2/GV02r4bBETcxxjgnLTGAP8eqp5rPxMqYfoek3gtyOuay7Y8qnAavLUhrrNwVmvLxeA+pYskRuU/Mmypg+9ryJ3CIAhOWzpsXBi7643dD2ifHPgk6lta77E6HFkDt2UmJRp3A/HoPMuITJp7xD0xQW4AxPD4nOaf10C73OZ2YFeMnnu+xjWHA0x4K4Qs0qkdR/jHPGC6SCn8qsVEQoA0/NR4r4ZVp4D+1dl/uc4FIgiLGg3mogugo6baLy9aW+zkKXFhzU7qL8KW+VlUa4VTjvBIeeVBVeFnYvu1GBQkcis1Mn/wn/uoKP2S0RrpeOKtXguUxxrHm55x8IwZPGwOzJJNghEs/v6avE752Dkw/HDFMEVEyc0D2kJx1V4PWSfIry5GkDUzbI7ehMLVu4J1GGzXmba0q2JOKWmsVkEUWSkb6iS37fzRjGDaomyWmfJlNxwt2BUW5XCpd/Y93akGbIu1FGoRLVVM45dUcmg5dtirwYu82GpeGlssqkk8XKqj3hTivEUZb17ZiL6o9PJ9RBfPpg=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA1PR11MB6097.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(23010399003)(366016)(1800799024)(56012099006)(11063799006)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QCDqx3M5lhcnbKSz5laPoHJOHPMwMuXVmzvSdZYtRZlLOOstLWdMcre5yFXD?=
 =?us-ascii?Q?DTCvEfcNbztzN8QgV3QgEP/Bg+/0vTyufZn40zK+nfWVjvhnFaiNvW5IztBI?=
 =?us-ascii?Q?uJiUUbLwe+umoxT4hZFWZZgQncFTZ8LU59WX2kmuDO82Fmr5H5GPyBMCdQno?=
 =?us-ascii?Q?zpilXGI8gVY6jClgEYKppzQViSQXq/7OVPknU/jVO1wUKTlr58UNWZYSMicv?=
 =?us-ascii?Q?+oiArN0O72Yeju01Fj+eW+SyuaPkrS4C+MWlE2ETwufivqm7IJX5dBi7xf9G?=
 =?us-ascii?Q?f66tsUrNc2Kwvr/v0Tk9W3qNL8QvOnWzTThy3tdyaqP1QzFcHHFxxhMJGCxT?=
 =?us-ascii?Q?4iY48wQFoMURz94ixqsGledYFekYCz+ZdiY2VikbgYw8L4/kZiN5XRCea9Uh?=
 =?us-ascii?Q?AgpViHz4llWA/jAmTQFR2h7+N19xvO0ePDL0sTBcseUf8vAbNzckXqKxrv7p?=
 =?us-ascii?Q?wyN29tE74p0Dy0uAtynD1FSpLun6hoMcJ7tJUvCJgT2fU4eCCvCzS6SQ6RaJ?=
 =?us-ascii?Q?y9XqADJQfJ3WpB2px5pafiK/kyD+YADcIZJmWDaqW/I0IPp/s4p4GuaMPN7b?=
 =?us-ascii?Q?3ja/1nBtMlC8EczqAYSdwK0SXaJOPvvguTr3daaRNT9eQcjIM/eXgyaaFuGA?=
 =?us-ascii?Q?L6DZVDMbWDgqksCSD82ovHqHJTX+1gSJqnoK8TBwy7BDmoUjY8Au2Inbq4N8?=
 =?us-ascii?Q?YlUQQ5VX/K4B66Y5lxITwA8EEB/KqBw+Bj9r+x4L3BupLX4SwclWUzgSUB3A?=
 =?us-ascii?Q?RkIhtizUBmlHx9+n5s8qxoPtxFZ4qRiBN8OsXdXtyhaizNvOky4GVxXHrvkd?=
 =?us-ascii?Q?X/SjSTee03256NLmrgN3uLv4EZTv1Vegh0q+YkRkRclF8/tamCwWunZqn5qF?=
 =?us-ascii?Q?hsH+3CPJkKYSKfbTjsf9aYYPIbvq51FfNCbvOZeNLx+X2Juk9WnP4hdK+2ZV?=
 =?us-ascii?Q?9mHH6xa7YWYG+XxzxCC1teXmAwA3PNZNLodgJxfbk8ZyT0paYjJznLQgtA7y?=
 =?us-ascii?Q?IDrHAW89NJYNQw4Hr3Yc6KPaSS5RnKdn5ofFQtMFbwNdYXavVTSHEj9p/avP?=
 =?us-ascii?Q?B+eWwVxqxXWAbBdV/T4IpOEOmkrZXjj+W0f9GIN12SlU0oFpTlZ/00tV0KOa?=
 =?us-ascii?Q?eKpey7zApwSa5LKWcpWewlag5OdO25TIwBXQhCjRsT8N2mHZVOGNLUXGpi5Q?=
 =?us-ascii?Q?a+ntGp7/5IUq1Uap4qM0b5Y430ak+qN8BLAJLEuywS9omRqFt1VCsLmYuBwd?=
 =?us-ascii?Q?hemflNFIG808hENFwtl45bCf1lwqVK4XDHHPfdQjmwTGj5meBwEZlrjj6CiL?=
 =?us-ascii?Q?ByAAV8lrITDbJAesJGXhAOddEgXS0gomAOlzgTt+wSnLUwr0J4ILs4KZ0Epp?=
 =?us-ascii?Q?zhLtZbYnjUPKQEsJ4Q5Sk0LPSeT+Gr7h6PLl7uCnPDhX26RmoaN+atuQhWM+?=
 =?us-ascii?Q?35I5yKz7xWVNNQiNGN1mn/Yj8EinlWWqcHPEDH5gnKWEAbhBeXSMaKJfDCMQ?=
 =?us-ascii?Q?GVjiHxEKid6CgrIxVAMlYhiX0VbF0Yq8ngVVlSFhF9VnW/wzS52coE19Qvbp?=
 =?us-ascii?Q?996wxt+vFr3gbR5PEZFl77rxiI+IIslosUVqUqnH6+Gf9jfiNE+dILV6CMYy?=
 =?us-ascii?Q?Svxyc9i9GESypuDHajABu/BdreawrYPyoEme9+5rQRvp+Ml5uX8vPl+AcTP8?=
 =?us-ascii?Q?RELm6jk3T1QkjDmuYfSf62RsWSvC69l2aWJ7dqg6r5F/M1J1CWZMSREfacae?=
 =?us-ascii?Q?u/5TPL8vm6ulfrvaGmvQhua3O9PZhYI=3D?=
X-Exchange-RoutingPolicyChecked: CYKUlBvIMtaJWMNeCvV8NjimoLyY9fSjna1IJekUXlJ1E/rCsUZWsWPoQYyBO4MxAUkgBKUXDFeQfhue351Qa4WhjwbWTUfnxbbxhKHUQh0eB8BfiFvGw6yNtiQp1zm6OsX+2iMawRxcQJfah3QY0Iv23p5c0yETxM7Az3G3Lr0LnOzwSwHoNXlvFBXqunZrq0wMrP2eQHFkreLADq3sm5ccVWw+HmLvIHwRRUJdLX2tqo8XeauFOJw3MiUtqgHHrTaITMBUyj8qWKbMz08VRfGlz61oPKXqL+aLZ3+uGyeqTI0o1HLWkcw5sFtJFlI01oqHBJnXgcZYPD/c1NzyzQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 9bd893a7-ae66-4238-e1c0-08dee0c3144e
X-MS-Exchange-CrossTenant-AuthSource: IA1PR11MB6097.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jul 2026 09:42:39.8235 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ZxGYCCpi5ME/d7tqXkey9VL4Ef7WEIPkWcOB0x9fEc+N3/ZJF8DdgXp5J3CcbQSUBZhUfn2/a7/7CKKMCPqA6EIWLqxugbsCAFRZ4t050Go=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7580
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1783935769; x=1815471769;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=uQQlBU9oSJ2FpE34B2/Ad8jW3tzmfrIioal32Nk89WM=;
 b=ZzGOO+LFWSGQospB1s1sxxa4PTcBKIuHO6mWyXUsCbbsrLTlv7eCbsDu
 KqFfuxCOUiWnB/4EtVgsmbUMx8bCgRi8AzSdfJoPKNGv0ke34faj1D2p5
 pE2WLjeg/oKiASlOmEo8wO+adTyUEYYSlfOpZLgU9EwjJ0QJf90A+dHCc
 DLR9VFnRh75BfzpE9lDHCDo+XsqofRoQ3KIzT3CreVm+pjvEdcmsL62St
 MhlCfWcv9TRLTTfwIkb0lePBGpTiU2IsRKqOPSRArrT+L0udR4rmuB/gR
 f4oIIlXpFGlQlZr2VexDPtYw8D6FmSkMBVYXaZBYqoKiYl0UFX66/yTLV
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=ZzGOO+LF
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net] igc: remove napi_synchronize() in
 igc_down()
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
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_RECIPIENTS(0.00)[m:devnexen@gmail.com,m:netdev@vger.kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:aleksandr.loktionov@intel.com,m:advoretsky@gmail.com,m:stable@vger.kernel.org,s:lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	ALIAS_RESOLVED(0.00)[];
	RCVD_COUNT_TWELVE(0.00)[14];
	FROM_NEQ_ENVFROM(0.00)[maciej.fijalkowski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FREEMAIL_CC(0.00)[lists.osuosl.org,vger.kernel.org,intel.com,gmail.com];
	RCPT_COUNT_SEVEN(0.00)[8];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:from_mime,intel.com:email,boxer:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BFCDE74969F

On Sun, Jul 12, 2026 at 02:22:42PM +0100, David Carlier wrote:
> When an AF_XDP zero-copy application is killed abruptly, the XSK pool is
> torn down but NAPI keeps polling. igc_clean_rx_irq_zc() then returns the
> full budget on every poll, so napi_complete_done() never clears
> NAPI_STATE_SCHED.
> 
> igc_down() calls napi_synchronize() before napi_disable(), so it spins
> forever waiting for that bit and the interface never goes down. Drop the
> napi_synchronize() and let napi_disable() do the job -- it sets
> NAPI_STATE_DISABLE, which forces the stuck poll to complete. Reorder it
> ahead of igc_set_queue_napi() so the NAPI mapping is cleared only after
> polling has stopped, matching the recent igb fix b1e067240379.
> 
> Fixes: fc9df2a0b520 ("igc: Enable RX via AF_XDP zero-copy")
> Suggested-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
> Cc: stable@vger.kernel.org
> Signed-off-by: David Carlier <devnexen@gmail.com>

Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>

This is a mirror of what Alex Dvoretsky did on igb, correct? Did you
reproduce the same issue on your side or is it a blind shot at this
driver?

Regardless, I think it's a correct thing to do, but some clarification
would be nice.

> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
> index 2c9e2dfd8499..b3883a5a7d7a 100644
> --- a/drivers/net/ethernet/intel/igc/igc_main.c
> +++ b/drivers/net/ethernet/intel/igc/igc_main.c
> @@ -5352,9 +5352,8 @@ void igc_down(struct igc_adapter *adapter)
>  
>  	for (i = 0; i < adapter->num_q_vectors; i++) {
>  		if (adapter->q_vector[i]) {
> -			napi_synchronize(&adapter->q_vector[i]->napi);
> -			igc_set_queue_napi(adapter, i, NULL);
>  			napi_disable(&adapter->q_vector[i]->napi);
> +			igc_set_queue_napi(adapter, i, NULL);
>  		}
>  	}
>  
> -- 
> 2.53.0
> 
