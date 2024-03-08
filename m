Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id CD93F875E77
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 08:28:58 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0C45841B3C;
	Fri,  8 Mar 2024 07:28:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id y1pOrwvhC4Gh; Fri,  8 Mar 2024 07:28:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBA5E41B3F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709882934;
	bh=A1AcdVBaGrASA1nHfdKxwUCsw8/7TUNFBvjk6zhwVeU=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IYzKa6UwQc7sokYB6iB+xlBdp6hGL0p0dB4/FUdh0WB1X4fw7VH75oWIcW7UYdQkD
	 rV+M72jmBzP8qWiirAZB/3fVtdc9nEBtoz1JuWLa15henLhxjdbtI8+oxQKbEOIA6a
	 s2kQ+HkvzC3TvHHynjoogmDiiQw7+nS/1jsaZI+LNQq7fFXwHVnNLAuww5DWMX0Z/u
	 5Or0bWnI6yYYePTxftHMkxbvaTW9+qGthYL5SPsBz0ciKkwcIVvhV8TLKWiES1Yk5A
	 e4unz3/3VEunOeV/WIbtVwF6OH4dteTVtMjNUGarXrloyAuuJtKUm+z+eo87/ntAjF
	 4VugygwCL8P7g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBA5E41B3F;
	Fri,  8 Mar 2024 07:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1B0691BF316
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 06248607D3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:28:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JzrT8abylZm9 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 07:28:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=sujai.buvaneswaran@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 29B2B607B5
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 29B2B607B5
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 29B2B607B5
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 07:28:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="4451218"
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; 
   d="scan'208";a="4451218"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Mar 2024 23:28:50 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,108,1708416000"; d="scan'208";a="10261518"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa009.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 07 Mar 2024 23:28:50 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:28:49 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Thu, 7 Mar 2024 23:28:49 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Thu, 7 Mar 2024 23:28:49 -0800
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Thu, 7 Mar 2024 23:28:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nTNX8NhxWIvsgUhbzbZuUynHorTrnQi5UJRhZr3+dqIZmIeZ9cA5sLUhpmCJww7MiN5gqi1C7seHRRtYLULF5QvEzsKeBFUTlbO6WjtYsBEEdTiHprybR7neEOrsKtw26RSPLloslSzKfEQXMqc8dtWCYw5OLbT+AzeX1BVWFcHW8rnG3ODgmYSYvtyw3QEDbYx22Ishp769bMY7xr5zmZkpPEhVrNzLJGpGjr3ilLitCRLociP16koDs3uFzNDUSgO+DufCNLWDnNKYoyDhFOKlvqZQB1AAIK2K8HNdJgmCgSLb/RrdNKF1EGVx+0Nei81NQm03K5k9CtLTu0r3XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A1AcdVBaGrASA1nHfdKxwUCsw8/7TUNFBvjk6zhwVeU=;
 b=NuoyZ8GKx8+0MTp1lxgh9SLMaHkW1AcuQGfgX2emiWUJ1FYXWrTMPSh96OogmuUUscSZw06pJjybXnVWyxoXG6GDQU0oOAJteyCZFnpSLAt8K7trXE2sNUqbYglfLJRXCUlMupl93AWSqspOxnWkJRov1biop7OCXXYgqthF1C9zYgeypYOM+O2tGG74TDkL5n5uBoRIgQ2qoSN9I8xsmtTp0IzrPRQ5yU/6A6VYj+hGtGjr92GO6KV76D+uu5fAWbcu+5TvT6gzMXN5rBH1rY/TziOpG+US8gnpSjUXGf9CwEmt7x/ehapKk/Qtxp6DpJjBYPqS3d6sER4k9KW9JA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5013.namprd11.prod.outlook.com (2603:10b6:510:30::21)
 by PH7PR11MB7098.namprd11.prod.outlook.com (2603:10b6:510:20d::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7386.8; Fri, 8 Mar
 2024 07:28:47 +0000
Received: from PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2]) by PH0PR11MB5013.namprd11.prod.outlook.com
 ([fe80::66c9:72ce:62ab:73c2%6]) with mapi id 15.20.7386.005; Fri, 8 Mar 2024
 07:28:47 +0000
From: "Buvaneswaran, Sujai" <sujai.buvaneswaran@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [iwl-next v3 3/8] ice: default Tx rule instead of to queue
Thread-Index: AQHaa86daf7WJfxJjkW+dYpM5H26urEtfNBQ
Date: Fri, 8 Mar 2024 07:28:47 +0000
Message-ID: <PH0PR11MB50138C75BC918723668FDD1096272@PH0PR11MB5013.namprd11.prod.outlook.com>
References: <20240301115414.502097-1-michal.swiatkowski@linux.intel.com>
 <20240301115414.502097-4-michal.swiatkowski@linux.intel.com>
In-Reply-To: <20240301115414.502097-4-michal.swiatkowski@linux.intel.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5013:EE_|PH7PR11MB7098:EE_
x-ms-office365-filtering-correlation-id: 0b7ea1d8-af8e-4348-545f-08dc3f4164a3
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: IvXdQ3DsTY2XMRHKx3gFc0l6AwvuLT3DxpYXqfwNU62zTdWUEk7hzuYKIUjlsNvlDrRZcMXuGva0101zjK5ayJqXMRNsYpDa+kwxr89mcdjsfHSacFoPRjTH166uz5J+BQIHwmZGhVoVHxSyqfUhU36PNGe5fZ9xigvgMGQmUEvJ5/0Dz7+ZpQlJiH2abMv+npY+3cDFW64G529w5idPHrklsexQ5PWxGYAzVbYzgC1bLxXxSM9w4Z5Mb+VXgmaMhVfo80ZauljwXLzvIQtHFnoWr4LW+KJQ0gDYNmPiJe5yxJ0ZfAmrhqCW0D45X1+Da6oB08dzV3mQ07YsCJZlc4vnq7ytaHH+tOkz/F7VWAUxyQo1dP9eZgvuZLWf2/AKEifSClUEaTvbZgn71rOY/puIYmZJZdRUe1hF2JehSC6FB0IH9L2qpwCd8mmN2v++VqgT05bc0kBD3K9RLx2XWEJIJBtnATzw4ueGw3UMdLdo92BJRHy3wYT1A984UDOt5g0IYIG+pX2TygnGb+zPZBfwVK6Ng0GbjbZVAeNIoc/UHNm8qMfNEbvKTWpN4PKSX47xKZoJV5xq/IG98df7++qhypKTIYE6ufdoeVLGUqDNlduxPN23wlZNnAY0r2/3dIByOkPrh3Yul0935j/rSKvgSfueeNFVHxsm8FbSQy3XvxG0GurwT/tJlPaoi+Yhr7fGHUN/3xj+zwylAwngT8bTZqiemKESho1Uql0C0RA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5013.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?6/Fwzbwupw3SB+J00SWsHANV6rSxft85zjR4j/Y2AycK1bYo3KXWGrG5GL/r?=
 =?us-ascii?Q?c5TXgT66oOLDM39htOdXe/pZ1wf+4yJ/9YnunXLZWafc5V94eyIqRzGoIE/N?=
 =?us-ascii?Q?AGoLSxbYzprCuJp+D67RTZrKVG9Rbuc1+jemSWGLa5bDQrmuqEdnuoKRi1+V?=
 =?us-ascii?Q?WEiBAP25bRRt/kmJpK8IJ43Meyt9bMVN+rPDIoKgScnQZAXuKeV+v7bV4j6e?=
 =?us-ascii?Q?VkBdQbIgYlwJafxPHJMcgyQYSC77bxzy+PqPvH29NKfw3s7N3vKcOpn0/TRD?=
 =?us-ascii?Q?84NLOr+HuJNoIyHYF2tGhHRjMjVrZ8e4FVLqfLDYfhSWM4O33k/CJkABW8pc?=
 =?us-ascii?Q?LDVN8AmKmjaSmznMq7O1NGoNt6xxwCBnac6yjXIjK6jp5Qw2SvX1ja1ijo1I?=
 =?us-ascii?Q?uXtEqWENCcAunLyn5d5ugYPAg/b/VvAsgaUG2AIgYG6WGTOwToKujYt5xh6h?=
 =?us-ascii?Q?eJ4WTPCv0dfLmzePzc3u3n0OXXcouyLC+fVSxvWiC8i5pgELxrvGhJnJXYmK?=
 =?us-ascii?Q?sXSczQNgvD7Jb+Vb6OTMe+5vpQO1lE+tg5hSqbX6pdYv3XktznexUIZEn2TY?=
 =?us-ascii?Q?q48/WmUS41nvRNuD1CP+l2id/UJ//gM3Ov/x1wLf+JV5DGcOWNV7qUqMpmiC?=
 =?us-ascii?Q?56pO0r7Y99YB/rCUZAtrkhBeWt8hbxMaWF4l5ohjYkbv+zwKKBjPnz6dRTSl?=
 =?us-ascii?Q?FDAmRSQ9kf8PG2Rstv2H6cbDMkkay7APn2o6Y+Jx/hqUfNW06+zM4u0JIZAc?=
 =?us-ascii?Q?XLGavqA1hTnkYnBb7Q/fEwDYTv/olHPAwQR+L4xFnIizkNjYa6HynFRg0HvB?=
 =?us-ascii?Q?/WWdCLXWGfsAtO1i4OcwR3X6jBH0fv8In67yx1o0+DWvQ/op98GqbwHWqmSI?=
 =?us-ascii?Q?UFQFFaZS4Wh8GzZpXJgIuF6w8yRHyiDwZIhA3urQc6ZS3NkmvP7rpy2ekOMH?=
 =?us-ascii?Q?WGOQ1jy6NMKKBbiq8Cracosnr6eyNyWwKSItfMS14Ri3NfU7v1ptQH2YJ7JQ?=
 =?us-ascii?Q?PuyxUmu0BVxJpRbzYGaVDE7h4OZKGJYZOlV5plJR1rQeWlp5Mt59q9gw+Xmg?=
 =?us-ascii?Q?3++wx/A5l89SjLapSRO5zRoiq2uPegFRySQ1bwQNTtp9XCW5quoTCImigZJ0?=
 =?us-ascii?Q?UjhW+Yz72UbYl6q3Qvx8GNnrmiXMJzJ2/fDHHhesfpXJqkJf+NEZKkbtsB8N?=
 =?us-ascii?Q?lTPgr/GdqaRfr0CC4f48RjSVm8x+gA5DhxK0OJTJUyNj2SA4Pf1WpTrrebjQ?=
 =?us-ascii?Q?v7+fAwCoCCM2E7xt7cScTlXeMj7JQZP2FbY3jBYGvi10GNC2UQpkibDUac3B?=
 =?us-ascii?Q?mny4e7ynfiRTpMaw32eqIGRb6vtkJbAY7gjUomCVkvRe23DZcN4lwEscoqwl?=
 =?us-ascii?Q?awXX+o8BmRUooBY7lYWD0XLaPbHAAwdmWb1jLNHNx96k0zNjROvESSb4K8g3?=
 =?us-ascii?Q?ldwKVrtmcc2JosDa4AVgk1FaBW+gTa8N/dEB40Zf4B2sOyvutD2h9NEz0OwJ?=
 =?us-ascii?Q?1TOgPXBpiwpqbFEagod1TOhOmYPSc+oF9agXLq+QDEtHoiEc5SNgQ3rlTC4c?=
 =?us-ascii?Q?/Du4g3b3QVtrbQsiQLq6VYVEeJ4faxb5s9Td0+D3Fa0mCJt65uEM4yN/t4Ij?=
 =?us-ascii?Q?og=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5013.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0b7ea1d8-af8e-4348-545f-08dc3f4164a3
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Mar 2024 07:28:47.3123 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VyAiOq2PMzbVGyBk+aHfC8bsSzjJ/wB8sLshJIaPlK8ZX49zSq/7TUD0LKv+yxc9obBD0WufLcG7OqHNKp3CXiML4avhb9JeVre8TD5/1zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7098
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709882931; x=1741418931;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jpNE8vlfBvy78pBr5PAVPVaxEe0jv9sAnHAMf25U/uE=;
 b=TBruSbH4m8FcCz7pNCIULZ8LLuS3VCwjnnrzTwIBMOG6zoldWENy1zxh
 XxztS7oiEVtG3p2jM9rrps0VuESDIYgVa/eHX3ZJ8ZMYeL/Q7Rx5g9qPm
 Sq+wjWu3F4SOW4LVhosYXsyTWH5m/1ljdGOBR9AUKDtHZpd4mCiFeK5A0
 p6UKm7GUS+xI1bFb4aDzhQWmVJOVhkL/gxnVl+6JfKbZZWarVohBDJQnk
 xJwXOljLZ7AkaI68EK6Z9cImk2VcuKTC4QEnshE30zmS/aGYvGae4L9Zs
 mFNUO8SiAH98sH0ujZhHH50XVzP5ASn91Zc/Ya+ObkHh1kahQAAs85XSp
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TBruSbH4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [iwl-next v3 3/8] ice: default Tx rule
 instead of to queue
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
Cc: "Drewek, Wojciech" <wojciech.drewek@intel.com>, "Szycik,
 Marcin" <marcin.szycik@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>, "Samudrala,
 Sridhar" <sridhar.samudrala@intel.com>, "horms@kernel.org" <horms@kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Sent: Friday, March 1, 2024 5:24 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: netdev@vger.kernel.org; Szycik, Marcin <marcin.szycik@intel.com>;
> Drewek, Wojciech <wojciech.drewek@intel.com>; Samudrala, Sridhar
> <sridhar.samudrala@intel.com>; Kitszel, Przemyslaw
> <przemyslaw.kitszel@intel.com>; horms@kernel.org; Buvaneswaran, Sujai
> <sujai.buvaneswaran@intel.com>; Michal Swiatkowski
> <michal.swiatkowski@linux.intel.com>; Marcin Szycik
> <marcin.szycik@linux.intel.com>
> Subject: [iwl-next v3 3/8] ice: default Tx rule instead of to queue
>=20
> Steer all packets that miss other rules to PF VSI. Previously in switchde=
v
> mode, PF VSI received missed packets, but only ones marked as Rx. Now it =
is
> receiving all missed packets.
>=20
> To queue rule per PR isn't needed, because we use PF VSI instead of contr=
ol
> VSI now, and it's already correctly configured.
>=20
> Add flag to correctly set LAN_EN bit in default Tx rule. It shouldn't all=
ow
> packet to go outside when there is a match.
>=20
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_eswitch.c | 107 +++----------------
>  drivers/net/ethernet/intel/ice/ice_repr.h    |   4 -
>  drivers/net/ethernet/intel/ice/ice_switch.c  |   4 +
>  drivers/net/ethernet/intel/ice/ice_switch.h  |   5 +-
>  4 files changed, 23 insertions(+), 97 deletions(-)
>=20
Tested-by: Sujai Buvaneswaran <sujai.buvaneswaran@intel.com>
