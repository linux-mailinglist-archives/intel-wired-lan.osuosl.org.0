Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 002419A3E3F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 18 Oct 2024 14:23:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9D2C3605E3;
	Fri, 18 Oct 2024 12:23:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id n3rMG6fXmz0F; Fri, 18 Oct 2024 12:23:13 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 81F9E6063A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1729254193;
	bh=tkJW9R+PUHO7NSZ+P+ta8pgVhkKhV/2Wm45MMsl66IQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=LEDukQTwrBolXQc6vJaeRmxI0a5VsNsUNYFwQR3KqfxbmS2Y/SCcgWxC23agzFMsu
	 PA2+TOGB7XXuHi9osEpvh2F+wcLVFEeSfMEYjdQmAMTpcNLxtv83q/ay7QCM5pH/09
	 Dk6XLGywqy8azaIPbijEOZmx8gyx0kjiqLtYWsRs5CdhrCWCz1zhsscnLnveYD928v
	 p9/S8Xlw9WunXAhEpa2vuuLktUJDyDe7qy+Ez/NM908uFxWiUHLwhIPiquOaLjvEDU
	 ON4X3soKkR2s49QBjwx9OfjCR2Np5k0yD3vQnFLZPBnJ6VJJ+h8zGGfqUvKi9TKL0j
	 Cv7XWCaxv4IgQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 81F9E6063A;
	Fri, 18 Oct 2024 12:23:13 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id EAE392072
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:23:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CB7EA81799
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:23:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id AZ4x20wJ5Co3 for <intel-wired-lan@lists.osuosl.org>;
 Fri, 18 Oct 2024 12:23:10 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org ABC96814B8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ABC96814B8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id ABC96814B8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 18 Oct 2024 12:23:09 +0000 (UTC)
X-CSE-ConnectionGUID: DqsgKHnCQbeBAS4gbCjL9g==
X-CSE-MsgGUID: 1QYDHLzNSFudVYzFm5xSZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="28889147"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="28889147"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Oct 2024 05:23:08 -0700
X-CSE-ConnectionGUID: wE2hScWhRVC8Hkd5HJr51w==
X-CSE-MsgGUID: a5Ct3dulS/+KEO7p/kIgcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,213,1725346800"; d="scan'208";a="79203622"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 18 Oct 2024 05:23:08 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:23:08 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 18 Oct 2024 05:23:07 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 18 Oct 2024 05:23:07 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 18 Oct 2024 05:23:06 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=w13GIylhWIDd6c/Xy7TghQyROeylOqDKViEfJuw5qkcNyEU+Wgc15i4k6XDAzQgHxgVBXSmTF8QhV5hiM7oc2spBCF7MejdJjjMqfdd9BZMZJ8NPjjtXFka24//QleBPJLGSbJ7+BUAyR/Y1QdK4Wm83SB/gXO5E/vCkfdu7apBOPp7nFUN2ElCfdaCsNoiXLTVZUi3efdgrHzyhShZg7PH1Pm0SKhl/ZY09r/bl+2wDRVd8rKcE9Zi2TMjyuBd1vjMzWLYXHBGc3BBAxKbgekqCIc5UVaMUE/05KqwvjH+9x85hCZvRYnrpDvJaQnfyCXvh/g+916iN/sYLITV1Gw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tkJW9R+PUHO7NSZ+P+ta8pgVhkKhV/2Wm45MMsl66IQ=;
 b=vIG9CmTc9NRYPgE9etC7yHY+Jhan+rvdXtVOXF2ZrcQu1KHCzpjJSRZsQ8tYYZbPaGn81CNkEObJ3gaCFoSclOvbkTUlCsmctm5o3jaW8ePOnYeJqD5BIllFtf74JwiENHfMA5ddX6R7VIzztSKOUfP5IN91hzpoTCfELnTFwj95P1ini+xgNwp6dEMTZ+7lNdiU39VdCC66FUDSHYTktcP+TcUWU0wB8v0zYE8aufsA6xMb5z2rCYWIubeHmH9RAFUqOCGHhA66h18HnU8Df5yy7R8fh/VuOHIKPs57zH/msZ7wqRneX/RluwpPkrqJRpIm6YRqfwo4Frgj2+8Q1g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM6PR11MB4737.namprd11.prod.outlook.com (2603:10b6:5:2a2::12) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8069.23; Fri, 18 Oct 2024 12:22:59 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::d19:56fe:5841:77ca%5]) with mapi id 15.20.8048.020; Fri, 18 Oct 2024
 12:22:59 +0000
Date: Fri, 18 Oct 2024 14:22:52 +0200
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Yue Haibing <yuehaibing@huawei.com>
Message-ID: <ZxJTHIc3HPKxkD09@boxer>
References: <20241018023734.1912166-1-yuehaibing@huawei.com>
 <20241018023734.1912166-4-yuehaibing@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <20241018023734.1912166-4-yuehaibing@huawei.com>
X-ClientProxiedBy: WA1P291CA0003.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::6) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM6PR11MB4737:EE_
X-MS-Office365-Filtering-Correlation-Id: 029bb56a-b144-4474-e42e-08dcef6f9a5d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|7416014|366016;
X-Microsoft-Antispam-Message-Info: =?us-ascii?Q?KuscNSSHoJ3W+dlMEvJb6oclS2eMHTSbz99O+QvJFeYjcxz0ilrucNkiKxpm?=
 =?us-ascii?Q?6PnsgN3WF8X2w61h0usATS5h3IcdHccUlVmRetJmkHssbKsloyjMDcy9hJzx?=
 =?us-ascii?Q?/m/2joFPrhixQFhZ47/CNqWOcYR+BYrleXCk3/wtsDcxY8kKKGfgJK9crfFZ?=
 =?us-ascii?Q?5dhZcnH4uSF6gfO7/7RYhbFRgW9BrcVEckGjZ+85UvTbRGD8/xNs6NiMzsQ7?=
 =?us-ascii?Q?cCcFH9wofNgqnLdqscvUwMflVTLDVpGQHPVrp2Ro0gjtDJleFxHT4Kgpm+Zy?=
 =?us-ascii?Q?HyXGKIQBHifJiaVdzUSoVzZGZJWK+PLxRbsdy6tlB6eCkrO3e9tA1XRaIJhc?=
 =?us-ascii?Q?hUdECft7aLfXhMWDWt6RfXzu34KOcgiMMfG66wwDnPf9yLbAxib89BfwIjBz?=
 =?us-ascii?Q?yeVgBjdAsCIUnzk3jnLl/PycmF7oCWjeACY20ftubB2ZKdgHyNykaqz6exWW?=
 =?us-ascii?Q?DEOG+WUjYgHyiKD5Gt/sZE+7vOULbG3nSiHqANCIQO5Zp6OtGKOlR3FgFVGN?=
 =?us-ascii?Q?QQlUqg0UIysEThwf9R113BAuqEfzKrIpHTzyfnhMnga5gPUhbIMwsNj97SVi?=
 =?us-ascii?Q?Uqr1bMqgbecSgIC11kudRAwnD18N3VtWp2gSAflu8nNWXMQ908WTifRmUcjr?=
 =?us-ascii?Q?LOdbqkbmwEfhqulgKjc9An5HTGQdA9ttWR6Oy82cOAybEMjUjDoBQs6xpXK/?=
 =?us-ascii?Q?ii2nlU9vK2+RjAoPN9svceru33baY4GCt0kyxARVvUP7LacKtK2HCRAQzxZx?=
 =?us-ascii?Q?Q0/+nraYZlHE5ZjIbDdleIxicU+ETiguabs0RO98EPOYgKe4m6z9YRl8R/x1?=
 =?us-ascii?Q?lF3xLerDHxCQJVLK8joo8T0LxH2fEprWaL9EWEhKGmmnguhZPjZqeJhqGkPV?=
 =?us-ascii?Q?NzSBVt24CJbMzxPawIFsNVlhf1G8/1yzId0wwMN6ySpU8yn4v0lCE8I0neLq?=
 =?us-ascii?Q?7fqcWeuFCa5o3Yn84zdJbZfm9zgGQweYMBFr5drk41nZIbmaX8c/fW6Jte/t?=
 =?us-ascii?Q?MR1Nlji9Uq3Py/OVbRudbpOmZjfpzye60vE2eqM53wXf1rVUGJazuEuNms+i?=
 =?us-ascii?Q?5A1qKhJ/8iqsz44oL2hk6I8OCyU6u0QkVd5BLA9Hl43mBxysnuj6z0oGOqxa?=
 =?us-ascii?Q?kuwx9eK3AJHJ33hoIhyaNhFcmmrdd2d1m1XZHrojYIIrShbzgocle9thTKtQ?=
 =?us-ascii?Q?+FPK0U3ucDpnn1MmsDyU15FmYrewmiOd1ChDLQeeaeP0pHtsQ0rR+Z4WicQD?=
 =?us-ascii?Q?W5O1hOYfNU3gGEKr7GFsLUfUqzPK0iU/Ovn8gXKTzR8uS0S6BzTu7j5JfRvs?=
 =?us-ascii?Q?DwQ=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(7416014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Ofv9bT35RFe7QoKxIdXIkXU4/SQlPmR7p0Ix7kY65XytpsAqd2/sM5KRr7sU?=
 =?us-ascii?Q?pckAaunjT+75ZFLc6CJAoQbOp+dv34/ra86Jro7ar5xgVURzNvSFp1O4O90I?=
 =?us-ascii?Q?He/WYPN6hUntwgtJaz3rxXcwb+R3xWcOTBvInbFAM8y92DWvXmJCnmP5XeTH?=
 =?us-ascii?Q?4V+tOW1DbWmXSbWaj/wHQxP96WCI+Y+hrguxjvkXUCem1xUNZ6jpOYDwuy4F?=
 =?us-ascii?Q?o9y1Wvn62IzFuBiHyeb+8xztv7eKsFOefjVfh46d6d3ESX4ABWWqDYWDa+K/?=
 =?us-ascii?Q?Hm/Ek9VYYzWZsnU/2L8nRulpxK1BPRdEm5cnW4rEy6OAgxfsf+D79kTpMf8z?=
 =?us-ascii?Q?VfbgEdJHgHYaCdz21d20aQtKm5l13aPzGT1/+AquDyE5M7FIsAPCZxdpY0el?=
 =?us-ascii?Q?LW/0rI6yh6SOBJ9qCPxPPLYZa4AkFGY7KtxABdEx2W/rTz+fKIcMZ3/3geqW?=
 =?us-ascii?Q?oBxcSzN11zkyXoAak8G8SJoVQoJmZGX++dvKpe3u9by5Bm62PZ0boyFWW5Sk?=
 =?us-ascii?Q?hVER90hK9ooOvYkeu+lNPdL+Fuoqui3r6dWsGacqxJdkRJOzcOnCiOTQaozL?=
 =?us-ascii?Q?n83XIEM1RFew1VQtEtzf3jRwyg92rEJ4Jf/HUZVh9xhUnqpbhjAR17CwIMgr?=
 =?us-ascii?Q?55T+QG/zIu2y4fDBXnI7OfB7Hv9I/tdRblrh0t3ccE27Y68HtJ1Gzb7yz86/?=
 =?us-ascii?Q?78DPBYy8ZAztx1Hgb5ejfoNP8LgK5nrBvO8DaoDcey9JKqPFJ0AhfCr1Ao9Z?=
 =?us-ascii?Q?9jt+rc8/+S644Zq01Xays/dLPJsdyYlUO2hqDDN7XQvvOSN/VIPgY7Neg3EQ?=
 =?us-ascii?Q?VILzwQvTETmZOP4YjczlFw9A3f1pszEoLSjKfQ8tnrpYmu5XJ3ZtbDMjdHxn?=
 =?us-ascii?Q?uuFioasH1laENflJQcBb+qqn7RdG7NrnFgxfvw32UYcq5srfglAdOanBuTyF?=
 =?us-ascii?Q?+hxPgaATQK6qgEu9+HIjWw1fuiCxGNEQCOZ2Pv0PemZLVsgX+rBDuBZqC/Q1?=
 =?us-ascii?Q?ckIfx8kfl+fkPM2S8NlGwHNuUItJUj+4n6Gi+12ttYBe9Rck/w0Ww7iXqYgZ?=
 =?us-ascii?Q?Txy02FIvjKi1Qy97k+zQ4evznCis+UliTXUXJADrwrVqT0JPWSYi/rh+0MFO?=
 =?us-ascii?Q?Un7bay4akSooJl6kLFRUtMm9r+FMXnS/MudMguUnkLpyIe9HUJytLVil+4RW?=
 =?us-ascii?Q?WJU6H+7xyqpGCk/szmL+dDJvrSTrDneypn+718JofZGV54ITqX/yPC0RIA7S?=
 =?us-ascii?Q?JxXx2saC7sAjueawYmSdTPX0Ozhw/sLgt3mgEAp/65iDKHCkgD3izizVUTe+?=
 =?us-ascii?Q?74S/4r+3cHAflK6gX5YwX7o5ZEzqp1CzSdEKnVgJIj8sI+ynB7KT93CCG8Ai?=
 =?us-ascii?Q?3SNq8u7ouWN/O2Ns+dlqvpuwkadvtAnSznQV+jlU6oTIPi2uAlPnlpf3nu/B?=
 =?us-ascii?Q?++LJJw9r5AOId9V70LCiqqmv/cG50PHQ78mBcWD2mbJJGTMS+KUFOw7fsGxT?=
 =?us-ascii?Q?tOCfd+NrlpBO7rQT7j5icvbMcn5DXAtlOafJWNbjfvE2aFr+XHaCkLcVVPag?=
 =?us-ascii?Q?IhENt2TQ3H6RN/QW4j1yI0nZ+Yw8Ji87N7PzBgTcpUKSloIDf5KCZ1koR8BX?=
 =?us-ascii?Q?Nw=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 029bb56a-b144-4474-e42e-08dcef6f9a5d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Oct 2024 12:22:59.1309 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: EF6Et21cmHyMcA3y2FudQVLQEj9NNiIk1fh0ny+vI8kVe3yems2yCDPjTNM+bxGcuYJB1FhPR6/qGKxNlkBUjUevTgMi01VPwxpuru0EP2o=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB4737
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729254189; x=1760790189;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=eEdp8jGPn1DAQqTHbbu+q1MxFMwyUlAG3xYg3nKaf5k=;
 b=Br2MWUDYQ0MuizmYV56IjIXfFfPAW1uWDGPvEOpzJ74zw5LZ9Uta+yF+
 dD4gSval9dsk9/v0YghV3rQWvD9wdpbqWYWOpVmbWQ9QWx5TYyorvpAxi
 Mdr9urzpnGPcXaigewuaiP3qq0tK6VTFiW+w7u1qzoEZLYbNdIYMcxeLc
 jD1TeEFNsz7F5M8OaP0nE79ShtgvbiSMNd9PToc3rrIJElJzxoDlecGwo
 JgeEDCGkp1gdGgZvamhEusMUk6c5Z6hYEeiUYik7Y2J9W0grk4Xpq6DC+
 +56EEJm+SwZ+vR/fiTRtErcZ1z9bmcJTWo3y+SHsEH9KF0z5VcWuQkYC/
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=Br2MWUDY
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net 3/4] ixgbe: Fix passing 0 to
 ERR_PTR in ixgbe_run_xdp()
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
Cc: alexander.h.duyck@intel.com, andre.guedes@intel.com, hawk@kernel.org,
 daniel@iogearbox.net, jithu.joseph@intel.com, przemyslaw.kitszel@intel.com,
 john.fastabend@gmail.com, ast@kernel.org, linux-kernel@vger.kernel.org,
 edumazet@google.com, netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 horms@kernel.org, intel-wired-lan@lists.osuosl.org, jacob.e.keller@intel.com,
 kuba@kernel.org, bpf@vger.kernel.org, pabeni@redhat.com, davem@davemloft.net,
 vedang.patel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Oct 18, 2024 at 10:37:33AM +0800, Yue Haibing wrote:
> ixgbe_run_xdp() converts customed xdp action to a negative error code
> with the sk_buff pointer type which be checked with IS_ERR in
> ixgbe_clean_rx_irq(). Remove this error pointer handing instead use
> plain int return value.
> 
> Fixes: 924708081629 ("ixgbe: add XDP support for pass and drop actions")
> Signed-off-by: Yue Haibing <yuehaibing@huawei.com>
> ---
>  drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 23 ++++++++-----------
>  1 file changed, 9 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> index 8b8404d8c946..78bf97ab0524 100644
> --- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> +++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
> @@ -1908,10 +1908,6 @@ bool ixgbe_cleanup_headers(struct ixgbe_ring *rx_ring,
>  {
>  	struct net_device *netdev = rx_ring->netdev;
>  
> -	/* XDP packets use error pointer so abort at this point */
> -	if (IS_ERR(skb))
> -		return true;
> -
>  	/* Verify netdev is present, and that packet does not have any
>  	 * errors that would be unacceptable to the netdev.
>  	 */
> @@ -2219,9 +2215,9 @@ static struct sk_buff *ixgbe_build_skb(struct ixgbe_ring *rx_ring,
>  	return skb;
>  }
>  
> -static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
> -				     struct ixgbe_ring *rx_ring,
> -				     struct xdp_buff *xdp)
> +static int ixgbe_run_xdp(struct ixgbe_adapter *adapter,
> +			 struct ixgbe_ring *rx_ring,
> +			 struct xdp_buff *xdp)

please align args. checkpatch didn't yell at you?

>  {
>  	int err, result = IXGBE_XDP_PASS;
>  	struct bpf_prog *xdp_prog;
> @@ -2271,7 +2267,7 @@ static struct sk_buff *ixgbe_run_xdp(struct ixgbe_adapter *adapter,
>  		break;
>  	}
>  xdp_out:
> -	return ERR_PTR(-result);
> +	return result;
>  }
>  
>  static unsigned int ixgbe_rx_frame_truesize(struct ixgbe_ring *rx_ring,
> @@ -2329,6 +2325,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  	unsigned int offset = rx_ring->rx_offset;
>  	unsigned int xdp_xmit = 0;
>  	struct xdp_buff xdp;
> +	int xdp_res;
>  
>  	/* Frame size depend on rx_ring setup when PAGE_SIZE=4K */
>  #if (PAGE_SIZE < 8192)
> @@ -2374,12 +2371,10 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  			/* At larger PAGE_SIZE, frame_sz depend on len size */
>  			xdp.frame_sz = ixgbe_rx_frame_truesize(rx_ring, size);
>  #endif
> -			skb = ixgbe_run_xdp(adapter, rx_ring, &xdp);
> +			xdp_res = ixgbe_run_xdp(adapter, rx_ring, &xdp);
>  		}
>  
> -		if (IS_ERR(skb)) {
> -			unsigned int xdp_res = -PTR_ERR(skb);
> -
> +		if (xdp_res) {
>  			if (xdp_res & (IXGBE_XDP_TX | IXGBE_XDP_REDIR)) {
>  				xdp_xmit |= xdp_res;
>  				ixgbe_rx_buffer_flip(rx_ring, rx_buffer, size);
> @@ -2399,7 +2394,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  		}
>  
>  		/* exit if we failed to retrieve a buffer */
> -		if (!skb) {
> +		if (!xdp_res && !skb) {
>  			rx_ring->rx_stats.alloc_rx_buff_failed++;
>  			rx_buffer->pagecnt_bias++;
>  			break;
> @@ -2413,7 +2408,7 @@ static int ixgbe_clean_rx_irq(struct ixgbe_q_vector *q_vector,
>  			continue;
>  
>  		/* verify the packet layout is correct */
> -		if (ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
> +		if (xdp_res || ixgbe_cleanup_headers(rx_ring, rx_desc, skb))
>  			continue;
>  
>  		/* probably a little skewed due to removing CRC */
> -- 
> 2.34.1
> 
