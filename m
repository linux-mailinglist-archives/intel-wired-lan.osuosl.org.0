Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iNP2JfoJsGlIewIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 13:09:30 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9497324C8CF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 13:09:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 49B3D60B1F;
	Tue, 10 Mar 2026 12:09:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id bfHopbiq5ubF; Tue, 10 Mar 2026 12:09:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A4C7160B19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773144567;
	bh=gF867SZzGYLT8GRpHbaChcflB30COqiDq6XJ+UvHW18=;
	h=Date:To:Cc:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=shBVgQFBcpesngq7OBnOpK4r0irghCs9+2R3EX34jwtv0KQTV+kB42OJ0u0mpx+Qt
	 +/+tqFe3Ey3zazwfEwrH4O9wgk012SQUeuREH4EPLfflSwyGJArE2BTrxy0Yzx97yo
	 NP9nRNDaq3FQSG91xGIdlOBeXzWlXz9B99Ze+yGknwPaMINqbCdpk+dy4MhAG3fU1v
	 781cA/7WOo2F1A9d4XV/qDuqMPnO4elPy247Hq0u0G7e3l+LfpgblNwblik8ImuVFd
	 dURWgtqJavNkssKG8/YW6f9hYlydxNhiCshVJVHT1d1FuFk0atd36id6yzhINyYbgl
	 T5LqrAND86nxA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A4C7160B19;
	Tue, 10 Mar 2026 12:09:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id BED28201
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:09:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9C82C41C50
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:09:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MhQBbtMoFTYm for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 12:09:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=52.101.62.65;
 helo=dm5pr21cu001.outbound.protection.outlook.com;
 envelope-from=christian.koenig@amd.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0917F419AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0917F419AB
Received: from DM5PR21CU001.outbound.protection.outlook.com
 (mail-centralusazon11011065.outbound.protection.outlook.com [52.101.62.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0917F419AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 12:09:24 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=TJsVMBb/tfGS87N6mIm9gRpXLCG42LAurayKGilMpxH/PDAr6bPNORfmCWZdjFU5R7D5YcYVguQFtqfLsyUmX6kxPFEiSnzSsT0X3i0FZTMjFiZB5JSgx61rS8Jiq20+4FG0+Db95lS++3Ok568q+HrUTsjrgmzRIPtYvLHTFAfoIVjW6PkzcMkPY/QZEoyboF3mMAY3EBMYeDlzkyUfQNgv2is2HOBv6kxvpCtksmMrmf2C17YqcNm63uz9PJF3rzu/pXmn+Y/40v82v0CJVF0IRzwjgpXNkpPu70bEE9PhaBjBzo/VB/yBbp3ICmJYmfpH5tnLllbLzWc8qcbqCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gF867SZzGYLT8GRpHbaChcflB30COqiDq6XJ+UvHW18=;
 b=A2Ru6EbP1EMp/PDkCT0cnRgB1/f8s00+cW4TFkcG/EjOacy1+TJQGOWYk0aHUmOpC/iMXYysAj27QcdMd/BifeatINVRALr3MGmWitIvYGtDPpaaAFSeBoN5DEyM2/QJ8S+tpub4ZOorKtpKdyn7FcqVVhHnus1onV+uLNBWMVPmeU0wQqfsudk9uYlLGgmXCwK/gGPYwXxxZiOtCx+KpkS4vkdrkM7hoso3ret+vtforbnCV+dubm12lKmnClHIQ4COIEeapD+O3McKAo0po2MlRrlzp3AwgsZZHp7CBIZXA6ITZnNhl8vT1O4jjw2v7/ovSA3Eojwqo3dIub9S/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH7PR12MB5685.namprd12.prod.outlook.com (2603:10b6:510:13c::22)
 by SJ2PR12MB8926.namprd12.prod.outlook.com (2603:10b6:a03:53b::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Tue, 10 Mar
 2026 12:09:15 +0000
Received: from PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c]) by PH7PR12MB5685.namprd12.prod.outlook.com
 ([fe80::ce69:cfae:774d:a65c%5]) with mapi id 15.20.9700.010; Tue, 10 Mar 2026
 12:09:15 +0000
Message-ID: <e8a328f9-568c-428c-9111-8742e5dc9a4e@amd.com>
Date: Tue, 10 Mar 2026 13:08:57 +0100
User-Agent: Mozilla Thunderbird
To: Philipp Hahn <phahn-oss@avm.de>, amd-gfx@lists.freedesktop.org,
 apparmor@lists.ubuntu.com, bpf@vger.kernel.org, ceph-devel@vger.kernel.org,
 cocci@inria.fr, dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
 gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
 intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
 kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
 linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
 linux-mips@vger.kernel.org, linux-mm@kvack.org,
 linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
 linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
 linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
 linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
 linux-sound@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
 sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Zhenyu Wang <zhenyuw.linux@gmail.com>, Zhi Wang <zhi.wang.linux@gmail.com>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, Tvrtko Ursulin
 <tursulin@ursulin.net>, Alex Deucher <alexander.deucher@amd.com>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-37-bd63b656022d@avm.de>
Content-Language: en-US
From: =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>
In-Reply-To: <20260310-b4-is_err_or_null-v1-37-bd63b656022d@avm.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: BN0PR04CA0015.namprd04.prod.outlook.com
 (2603:10b6:408:ee::20) To PH7PR12MB5685.namprd12.prod.outlook.com
 (2603:10b6:510:13c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR12MB5685:EE_|SJ2PR12MB8926:EE_
X-MS-Office365-Filtering-Correlation-Id: 47f3db0b-99c2-4a41-234d-08de7e9dd8e9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|366016|376014|7416014|1800799024|921020|22082099002|7053199007; 
X-Microsoft-Antispam-Message-Info: rOsxnTx2kr7OFzy5oepnHTPa0Bl5bJUKTo+63luhlotIfFC3KzHLS+E3VMqAH1iHBTKaMYJ2UmsdfGDNZaGu1pbEMDo//hCzcDM4M0QcZ45ZOizgGMHWaZ1ya6xgl3xwPkUvHxqqi0dZr9N6cRTFQsw2jWmjewkDeVuOnYane588HX2iWR3CYWIfa7Br5OJ8iwoNCOeglYq2hmCD+XVye2SYHUtE3Hy4SP9KBI+8BmSMAMQ/VOPLHLKz4RZ9XB2O5YjMjmZNxo77a9Wn4CGVWydbDau3GMYxKNosqPKCKb4Q1CUax6ft49mrg9SC//kqRW1zqMolNibmO7EJ8UrT+8LEQLFweVShgEKu5cPWaq3q4EG/+BJAf1IDt5+JDbViN17XVz70lGDOGZ4jwQRjV4vf9JdhxuB4SEEixCLVEvpCz1BN1wjaMZJjUQJ1rBtYeCl7QcnPw9U0IKylRYTF5xRaKrh7F+9YZM5fq1EYA8ZCM91wDsdBKj5lLGxj8vM0EN2SWbDWewgwDW8HgSigsEvdgly9gfuYdn31TzS0vOH/OX63TN1XP4v6vomPJEuUHP++WLg3pWBA3+DbKgempasoOCVE7DLrw/dyeIIxqkWziHoLnwrgnCzwadYNNG+thV2OSa9TYKcYx215HoD7gpmsNcq0zcO0TS0q9MaYHbyjHNj6G+3J45FlJseURnlO+nW1rf/TKjD52NDMyHLSNSRr9yuLpthUPmg9JNvsnPoFd1Ih5I4yneCQepirDpxfGM+ONzOAPJ8ruHE9n09qdA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR12MB5685.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(7416014)(1800799024)(921020)(22082099002)(7053199007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?V1AwRVFocW41VXIyT21kL25qc09PRmMrUmFOdmVac0U0V1hTYjN6aUpIdDZ5?=
 =?utf-8?B?dkRQb21XQWNhaVdmelNIamQ4SXdCUDFSekF2NklUMC9ycDZyUWFFNXRGM1Q0?=
 =?utf-8?B?d1FUQ2d0b3Zpb3dqK2NNQ1lrUzJGeGlLRU9rekxOcFFhOTlqWWI3bit0TVJ5?=
 =?utf-8?B?V2liamcxbjM5SmRzcFJvTmNkYnpjWm1KSVI0SmZDNWIyV3hwQlNkT0phTUlJ?=
 =?utf-8?B?UUVSRDBpMVZvZ05xVGlNdWN5aC9lNGN4cXplUmVoREZUYzhEOWRUWjlOdlZ3?=
 =?utf-8?B?VlFvMEwzT1Z5TGwraTFMZmJRczdQV0R0emVocTlKUFpuOXA3TWJmRTJVVDJm?=
 =?utf-8?B?M0U2NnROelpvbEJKcWZLK3E3MzZaNXZFUzBxdzZ1NmJzSTZuZ1BrNXc3MitE?=
 =?utf-8?B?Q1FXUmRpR20rOStjVDRzeUxpTUp3VVRhbWVsSFdrV2lmZ0M0SFFDTjBQNERs?=
 =?utf-8?B?Q0dDcXdaVWoySXZNdWh4YVBGUkNPWWcrYTl5ZnRmamhKMks5NEQ4MUtoelBt?=
 =?utf-8?B?SmVITXBjVEwwTkgyTlhSUlVNVUZJOTlJM0ordkZBRUYyZmpNUjNQR0hCdTZ1?=
 =?utf-8?B?Sm9vNmZpMkg2VFc4OFh4VUVOZ1JJL2F0RGhxS3VWZitGVVRKWVQ3MktHOHVs?=
 =?utf-8?B?YnoyT1d2Q3Q0Z1o3MGRTcnpUVFZ3UVVYUTBFcjVSbE01azdaNytsUzQ2WFIr?=
 =?utf-8?B?WUZBZHB0bGIvOXFhV3VjK0xUZ3U4Yjc4OHdKSm5tOUxucFpOMkJjcXZXTVVC?=
 =?utf-8?B?RGJzOU1yU2N1c2tIR09qQW0zQ3AwaWc3OEdqUlQ0S3hubVVORXB4NmdndHFp?=
 =?utf-8?B?RXFwRjJ5cmUvMWRGZVduQk9IUFhXQVc0SjBKUEkzeXFQRU96dHc4VTJxdi92?=
 =?utf-8?B?c0VUNjJuZU85SUN6YXZ5M2cxeStJWkVNMXZrRnFpOGJoSW9XSER4aHkwZFVt?=
 =?utf-8?B?UGRnSkdSREJwNGJuNTh5bmtiS2VXMU1JUzc3OCtHY3VzcVZpUWl2MDByUEJL?=
 =?utf-8?B?TUN1M3pBVXZEcm5KaUdpNTVHZWZwNEZhZHlVbTRwQ1NjWThTa3ZHZ2pKdDF2?=
 =?utf-8?B?bkhmTjBPMEFONkFPeFhzZlVvZ1VRQm5KT1hLYWZEanVvaUlWWGtYUmJ0TCtx?=
 =?utf-8?B?MjRDei95ckRET05hVFFEdjVxcURHYlJleWhCV3Mwd2dZdE01K0t1V2lPeXlM?=
 =?utf-8?B?MXIwZHExd2hyZkNZUVZHYUNHbUxCU2wyVDh5WCtqWmNDRkF1RHJ5alQzVFha?=
 =?utf-8?B?cVpYbDZtMGxJQmpIZ1FkbW9UN2JFNDNCZEV6T09IaUoyUU5YOEN5WXlNN2V3?=
 =?utf-8?B?MkhUaVQ0ZnZFOHFTVFY1NHFJRFNZaStiUlVxamZtajJxTHFaczgzbXR6YmVC?=
 =?utf-8?B?bVNxdlZxUXhLVXBhM3AyRHVZczhxREJYdFdpOWRCajdRZUpDTzR0TTJoS0w2?=
 =?utf-8?B?VTczMUIwN1hnc1IrRldzY1dMdzZuU0NnTjc0cFljbDF2MzZtR1luWWltQmlD?=
 =?utf-8?B?cEw2Y1FEZXFwVjZKdG5xVDRUeGRTaEdpczgvUDEyWlU0b3h6cEFsa3d4bUdp?=
 =?utf-8?B?N2NiOStpMzY4cU1ZZStzWEJuOEplNnFHeFZCYlF5OGo1T0tvRVRKT0JiUERn?=
 =?utf-8?B?WG5PdHFvbWIwSUt2REFYMHh2MVNtUVZSMGJENjZNSXJoeGo4K1FpQVZMTkdw?=
 =?utf-8?B?Vm50bzFicFNuVVFvMUhMRS9tczM1Wk9rejRKanFkcC9SN000cUUxUlZSVzZt?=
 =?utf-8?B?SG01L1NJbWNnc09HSGk4YkNPeEdjaE1kN2FQQUY3VHFtMEpDdDFuclZnUDRR?=
 =?utf-8?B?dzVoWXZrS3hQcEdKMTlwTXQ1VlFjMlFuVnptNmVkRGFyQk9lL29jY0NwcStC?=
 =?utf-8?B?bS9BVGNQak1ka3Vsb0FON0pKbWltdVphN3ZtVm1WNUZ5UEVGM0pqQmRaT3dJ?=
 =?utf-8?B?TjBsaDVzSzhBekl0T3I1RXZGdVhIamNkSy8rdDQzSVFiV1J2U3NDQWx1OVBN?=
 =?utf-8?B?eXk4V3k5R3NpSlRNaktTWkJiNTZiVU1LeGdDZkw4NVBSWDZXRXhSMlErQ0NK?=
 =?utf-8?B?d24xSnZ2U2xOVm9JTjYzdW5qMGZEWWJEamZMMmkwQVhyeXdZUmV4Y0graDFN?=
 =?utf-8?B?V1VxRjBpVmxTaW0xZEswTG12a0pJTjRTU0hlUjZGZnc3SFZmNXZsR0t6QVpQ?=
 =?utf-8?B?TWF6eDBoWDFhcFJJaW9MYnRDUC9hZVRWTi9URVN2ckh1bVQvV0R6R3BXcVBC?=
 =?utf-8?B?QUtWME8vZzk5V3UxZDZUTnU5eHl6Y2ZoZ1hjdXI0MmwyODNZNU5vaEZnS3h2?=
 =?utf-8?Q?DfmazJR2VH3VghHRhw?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 47f3db0b-99c2-4a41-234d-08de7e9dd8e9
X-MS-Exchange-CrossTenant-AuthSource: PH7PR12MB5685.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Mar 2026 12:09:15.0060 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HqRTO+mz3lE4w162bISlJt1G5cnWIiVsGPkfJ+DfwnudZuohoYCt/6AWclzBsAkl
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR12MB8926
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=gF867SZzGYLT8GRpHbaChcflB30COqiDq6XJ+UvHW18=;
 b=ZXl7dHcJkP06v2ir7fTUMJWqlo7worOJJa3N+67vK7KARsFWhcBYNtHJTOaUCi6oZtkQm51cDcHyyhtpA/QL8Xy29+4WVECz45gMFpNlOj/wUMB1wZvJFPAfkPFOghKdC2iGF8zP3A/t1JfyK/gDFnhPQayRDQYXxDcsnL/Ngpc=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=amd.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=ZXl7dHcJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH 37/61] drm: Prefer IS_ERR_OR_NULL over
 manual NULL check
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
X-Rspamd-Queue-Id: 9497324C8CF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [3.19 / 15.00];
	DMARC_POLICY_QUARANTINE(1.50)[amd.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),quarantine];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:phahn-oss@avm.de,m:amd-gfx@lists.freedesktop.org,m:apparmor@lists.ubuntu.com,m:bpf@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:cocci@inria.fr,m:dm-devel@lists.linux.dev,m:dri-devel@lists.freedesktop.org,m:gfs2@lists.linux.dev,m:intel-gfx@lists.freedesktop.org,m:iommu@lists.linux.dev,m:kvm@vger.kernel.org,m:linux-arm-kernel@lists.infradead.org,m:linux-block@vger.kernel.org,m:linux-bluetooth@vger.kernel.org,m:linux-btrfs@vger.kernel.org,m:linux-cifs@vger.kernel.org,m:linux-clk@vger.kernel.org,m:linux-erofs@lists.ozlabs.org,m:linux-ext4@vger.kernel.org,m:linux-fsdevel@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-hyperv@vger.kernel.org,m:linux-input@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-leds@vger.kernel.org,m:linux-media@vger.kernel.org,m:linux-mips@vger.kernel.org,m:linux-mm@kvack.org,m:linux-modules@vger.kernel.org,m:linux-mtd@lists.infradead.org,m:linux-nfs@vger.kernel.org,m:linux-omap@vger.kernel.org,m:linux-phy@lists.infradead.o
 rg,m:linux-pm@vger.kernel.org,m:linux-rockchip@lists.infradead.org,m:linux-s390@vger.kernel.org,m:linux-scsi@vger.kernel.org,m:linux-sctp@vger.kernel.org,m:linux-security-module@vger.kernel.org,m:linux-sh@vger.kernel.org,m:linux-sound@vger.kernel.org,m:linux-stm32@st-md-mailman.stormreply.com,m:linux-trace-kernel@vger.kernel.org,m:linux-usb@vger.kernel.org,m:linux-wireless@vger.kernel.org,m:netdev@vger.kernel.org,m:ntfs3@lists.linux.dev,m:samba-technical@lists.samba.org,m:sched-ext@lists.linux.dev,m:target-devel@vger.kernel.org,m:tipc-discussion@lists.sourceforge.net,m:v9fs@lists.linux.dev,m:andrzej.hajda@intel.com,m:neil.armstrong@linaro.org,m:rfoss@kernel.org,m:Laurent.pinchart@ideasonboard.com,m:jonas@kwiboo.se,m:jernej.skrabec@gmail.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:zhenyuw.linux@gmail.com,m:zhi.wang.linux@gmail.com,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rodrigo.vi
 vi@intel.com,m:tursulin@ursulin.net,m:alexander.deucher@amd.com,m:hjc@rock-chips.com,m:heiko@sntech.de,m:andy.yan@rock-chips.com,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[christian.koenig@amd.com,intel-wired-lan-bounces@osuosl.org];
	FREEMAIL_CC(0.00)[intel.com,linaro.org,kernel.org,ideasonboard.com,kwiboo.se,gmail.com,linux.intel.com,suse.de,ffwll.ch,ursulin.net,amd.com,rock-chips.com,sntech.de];
	DKIM_TRACE(0.00)[osuosl.org:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp3.osuosl.org:rdns,smtp3.osuosl.org:helo];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[christian.koenig@amd.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[75];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On 3/10/26 12:49, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.

Looks like a reasonable cleanup but could be that driver maintainers want to take that through their individual branches to avoid conflicts.

Alternatively when the i915 and rockship maintainers say that they are fine with the change I'm happy to push this to drm-misc-next.

Regards,
Christian.

> 
> Change generated with coccinelle.
> 
> To: Andrzej Hajda <andrzej.hajda@intel.com>
> To: Neil Armstrong <neil.armstrong@linaro.org>
> To: Robert Foss <rfoss@kernel.org>
> To: Laurent Pinchart <Laurent.pinchart@ideasonboard.com>
> To: Jonas Karlman <jonas@kwiboo.se>
> To: Jernej Skrabec <jernej.skrabec@gmail.com>
> To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>
> To: Maxime Ripard <mripard@kernel.org>
> To: Thomas Zimmermann <tzimmermann@suse.de>
> To: David Airlie <airlied@gmail.com>
> To: Simona Vetter <simona@ffwll.ch>
> To: Zhenyu Wang <zhenyuw.linux@gmail.com>
> To: Zhi Wang <zhi.wang.linux@gmail.com>
> To: Jani Nikula <jani.nikula@linux.intel.com>
> To: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> To: Rodrigo Vivi <rodrigo.vivi@intel.com>
> To: Tvrtko Ursulin <tursulin@ursulin.net>
> To: Alex Deucher <alexander.deucher@amd.com>
> To: "Christian König" <christian.koenig@amd.com>
> To: Sandy Huang <hjc@rock-chips.com>
> To: "Heiko Stübner" <heiko@sntech.de>
> To: Andy Yan <andy.yan@rock-chips.com>
> Cc: dri-devel@lists.freedesktop.org
> Cc: linux-kernel@vger.kernel.org
> Cc: intel-gfx@lists.freedesktop.org
> Cc: amd-gfx@lists.freedesktop.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>
> ---
>  drivers/gpu/drm/bridge/synopsys/dw-hdmi.c       | 2 +-
>  drivers/gpu/drm/drm_sysfs.c                     | 2 +-
>  drivers/gpu/drm/i915/gvt/scheduler.c            | 4 ++--
>  drivers/gpu/drm/radeon/radeon_test.c            | 2 +-
>  drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 2 +-
>  5 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> index ee88c0e793b0416d20105a43448cb4037402e64b..64fa2bc8d28197147ee22b4f74134cc27dd9b32d 100644
> --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi.c
> @@ -3608,7 +3608,7 @@ void dw_hdmi_remove(struct dw_hdmi *hdmi)
>  {
>         drm_bridge_remove(&hdmi->bridge);
> 
> -       if (hdmi->audio && !IS_ERR(hdmi->audio))
> +       if (!IS_ERR_OR_NULL(hdmi->audio))
>                 platform_device_unregister(hdmi->audio);
>         if (!IS_ERR(hdmi->cec))
>                 platform_device_unregister(hdmi->cec);
> diff --git a/drivers/gpu/drm/drm_sysfs.c b/drivers/gpu/drm/drm_sysfs.c
> index ef4e923a872843339743d21e4877225855da921e..6748acb4163e8f5658c9201a0412b38862c7baab 100644
> --- a/drivers/gpu/drm/drm_sysfs.c
> +++ b/drivers/gpu/drm/drm_sysfs.c
> @@ -600,7 +600,7 @@ struct device *drm_sysfs_minor_alloc(struct drm_minor *minor)
>   */
>  int drm_class_device_register(struct device *dev)
>  {
> -       if (!drm_class || IS_ERR(drm_class))
> +       if (IS_ERR_OR_NULL(drm_class))
>                 return -ENOENT;
> 
>         dev->class = drm_class;
> diff --git a/drivers/gpu/drm/i915/gvt/scheduler.c b/drivers/gpu/drm/i915/gvt/scheduler.c
> index 15fdd514ca836e84f4de95e3207ab45bb9243426..933ec5ffa1f1ebafd687996f167b982490702211 100644
> --- a/drivers/gpu/drm/i915/gvt/scheduler.c
> +++ b/drivers/gpu/drm/i915/gvt/scheduler.c
> @@ -675,10 +675,10 @@ static void release_shadow_batch_buffer(struct intel_vgpu_workload *workload)
>         list_for_each_entry_safe(bb, pos, &workload->shadow_bb, list) {
>                 if (bb->obj) {
>                         i915_gem_object_lock(bb->obj, NULL);
> -                       if (bb->va && !IS_ERR(bb->va))
> +                       if (!IS_ERR_OR_NULL(bb->va))
>                                 i915_gem_object_unpin_map(bb->obj);
> 
> -                       if (bb->vma && !IS_ERR(bb->vma))
> +                       if (!IS_ERR_OR_NULL(bb->vma))
>                                 i915_vma_unpin(bb->vma);
> 
>                         i915_gem_object_unlock(bb->obj);
> diff --git a/drivers/gpu/drm/radeon/radeon_test.c b/drivers/gpu/drm/radeon/radeon_test.c
> index 0b459f7df23bae3eef7e36f4b5f35638fb6f4985..573284c4af60f12d7edec889260fc8a2e2b70420 100644
> --- a/drivers/gpu/drm/radeon/radeon_test.c
> +++ b/drivers/gpu/drm/radeon/radeon_test.c
> @@ -234,7 +234,7 @@ static void radeon_do_test_moves(struct radeon_device *rdev, int flag)
>                         radeon_bo_unreserve(gtt_obj[i]);
>                         radeon_bo_unref(&gtt_obj[i]);
>                 }
> -               if (fence && !IS_ERR(fence))
> +               if (!IS_ERR_OR_NULL(fence))
>                         radeon_fence_unref(&fence);
>                 break;
>         }
> diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> index 3547d91b25d317c6cad690da7d97a7e5436c0236..8a267de85da9c76c2e29b2ababf1218e400282c2 100644
> --- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> +++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
> @@ -1095,7 +1095,7 @@ static int dw_mipi_dsi_rockchip_host_detach(void *priv_data,
>         struct device *second;
> 
>         second = dw_mipi_dsi_rockchip_find_second(dsi);
> -       if (second && !IS_ERR(second))
> +       if (!IS_ERR_OR_NULL(second))
>                 component_del(second, &dw_mipi_dsi_rockchip_ops);
> 
>         component_del(dsi->dev, &dw_mipi_dsi_rockchip_ops);
> 
> --
> 2.43.0
> 

