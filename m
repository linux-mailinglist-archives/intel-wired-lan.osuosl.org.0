Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F4C6510B1
	for <lists+intel-wired-lan@lfdr.de>; Mon, 19 Dec 2022 17:49:01 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0588E8190B;
	Mon, 19 Dec 2022 16:49:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0588E8190B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1671468540;
	bh=ZBAyErdeAxNAiE8tJMwhgH8kB3zER+WNouzKyIrXKhY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZE867iZmGZNRE1elGvYd9/2etKzrONSzZjt26/C+2Xg8hCX/svwKngBaN08zN/TV+
	 DWfZ2I+vcfM67p+o6VDF/fUg9rMmMbKpimazLiF1UfeKawesbEa2Tr75XsroBaWN/I
	 4SsFGq1mMWfn2w2P7Wy4619pFXIZeP29gj/zVVjgGSjGjzPZW6lFS7VM9gSNmjek2u
	 WClblD4bEzSgCZK6lTpXDIkbpra0PECLnDKGte785NLmpN+Oojo4qlEj+UIIdsdu7E
	 bOToEnUmwxq1QtaxIDtK44Wm6VPkirUVy3Xt2XstArdDyBwxmAHdjnpEye0YujDL8W
	 73A5OzkLdS+6Q==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id lDhd0-VkKOqz; Mon, 19 Dec 2022 16:48:59 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 188B281372;
	Mon, 19 Dec 2022 16:48:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 188B281372
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79F7D1BF295
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 16:48:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 55322404E8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 16:48:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 55322404E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dPMDJXpJIjqf for <intel-wired-lan@lists.osuosl.org>;
 Mon, 19 Dec 2022 16:48:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 10BC84028B
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 10BC84028B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 19 Dec 2022 16:48:52 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="383737677"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="383737677"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Dec 2022 08:48:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10566"; a="652776611"
X-IronPort-AV: E=Sophos;i="5.96,257,1665471600"; d="scan'208";a="652776611"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga007.fm.intel.com with ESMTP; 19 Dec 2022 08:48:52 -0800
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16; Mon, 19 Dec 2022 08:48:51 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.16 via Frontend Transport; Mon, 19 Dec 2022 08:48:51 -0800
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.16; Mon, 19 Dec 2022 08:48:51 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoXDLbRZhb8iU9f0I2Jk1au5/Haj+oW1Su6ENO1LZ04CkOW7oWKt8tWK/8oNk29s17u7RfdtRHZ/rhqXBReKkML772zBRT3uQNACUlTcTAsa6DKY8wMixKLi1iADpZ3gPV2TZLKBkCkhd7Nwspe0RpdXHotm0y1B/uyskQRjuWWeskr1bnlS3P6TrcbhqJ5R4bvgVSy1t7J71gKDQYsAdQGstskKxWpWOkZ9lc3jecDPALX2oJLUirVb9RThUclL0+3/1yBGd0QOhDW1HuLa/941wl6QKzY1oPA4oXVBIrByyfx0iWsjJlDMjB4YjYvkkoxWIp1HO6w9djynOkDk2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zM0l7w3Ni99i+Etu2Lq/JVssZdI1vf/Qt3yoE7feSmI=;
 b=C3aX992aDZNf16w1/xn5Wa+WKyhWKDcNqBZYFJK80Uke97yYLCM+M6GvNlTfVZPcAt2CAm3UtpBClwb9ldQM4Nb7DugWmYGmhZ5iuOS2O/boj26vHAtDSPpDVrAtzIQk5LW0dXzhUjHDabcG7gIaICUn1XAuhPNUBaxSEooH1Y8hTj/UWis1NPOeu7mn/Cnh4geuAOC2vovqygemDgd4+gAvziHBXd15C8u1fMfrsEZj9Qn6Dp9DqTTfLSKf/5dVsgpU6LOA91uNFVqj7eSZSX80YImdAxHsMbCuPSGTVxTpRLBOmFWWajxtgr1dc/UafH1FWwZd3x0whlzw6hac6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6117.namprd11.prod.outlook.com (2603:10b6:8:b3::19) by
 DM4PR11MB7256.namprd11.prod.outlook.com (2603:10b6:8:10c::8) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5924.16; Mon, 19 Dec 2022 16:48:50 +0000
Received: from DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::fd3c:c9fc:5065:1a92]) by DM4PR11MB6117.namprd11.prod.outlook.com
 ([fe80::fd3c:c9fc:5065:1a92%8]) with mapi id 15.20.5924.016; Mon, 19 Dec 2022
 16:48:50 +0000
Date: Mon, 19 Dec 2022 17:48:36 +0100
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Message-ID: <Y6CV5GkmIE+dM3cH@boxer>
References: <20221217220947.3232247-1-sergey.temerkhanov@intel.com>
Content-Disposition: inline
In-Reply-To: <20221217220947.3232247-1-sergey.temerkhanov@intel.com>
X-ClientProxiedBy: FR3P281CA0011.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:1d::17) To DM4PR11MB6117.namprd11.prod.outlook.com
 (2603:10b6:8:b3::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB6117:EE_|DM4PR11MB7256:EE_
X-MS-Office365-Filtering-Correlation-Id: 26103cc4-b209-4359-9278-08dae1e0e76d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QI9hZyf87hq/p4ck2tvU72fqIKzUwaQSjz45gIJIsBqUuiTN01V7xu8wiAGPm7P6OzXsJ0hZdXUeH2c5v/SD5JbymzHp/eGpN/HWmIoPx2YMrGYRWV45xqlFKkDBCiu6PhKeipL1WW4DgoDeD/cLFEuAa9FErzv/5/TbCbWK5T/HgWxAg0iWyItyatg/DaLRb8wEOBGKPp9VJAydCsQN8VYlZqJHQJ4xKoiiYl0ygTjCmtKN0TNyqI+N6Uh8LhVELOFdCIg2G4QWNk02Vh2jVp7n2EBgECp+KYIK20ayCZxiSy6ZJKyvvKT25GvvdKPajr6LGnO1WPL0XPrRvk4e1Yy8z3xvynJZCa+x60w7gW1oAOCXhUFsKINHcMreOZS6XxY7E+MHaiVFJuNusFrlpnKbdAudI0EQgzBR2Z5SvEXy2g3eN024xM5GZO7emcmPFBmvk2G4lEoPKfgc+1ihtDgJVZ815Oqktx5qH1xoFQtuQQ9PdJwQ2zVY5gkwYHCeRgURybjhywRYnQGnx1zGVPZsZg5S0LRlLYABTB66MR1W5Z2+xat400iD23oOdjOF3FvqZkteYz4xNSmnZAccoMETW5PQyfnTWKPymUy4xSX8dqkOSoBGmx4TH3IEyTT8whD3KD+n2x2VuYX2xL9IcEqAu9zreo6B6TzTUq3jT0v2XD5V+OH0TTSR7vZmyPKG
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6117.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(7916004)(366004)(346002)(39860400002)(136003)(376002)(396003)(451199015)(44832011)(38100700002)(82960400001)(6636002)(478600001)(6486002)(2906002)(316002)(5660300002)(6862004)(8936002)(66556008)(66946007)(86362001)(66476007)(4326008)(8676002)(186003)(26005)(83380400001)(41300700001)(6666004)(33716001)(9686003)(6506007)(6512007)(67856001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?89C2YChmqxg5+B76ICDuxpMQOO1iM+mD7FvQJKHk/weV0VJh8swD2kKQxz2T?=
 =?us-ascii?Q?8bviC2HgRhotQIHEKXudRSmxowpBuANkvgvLpNEb1akFvqYfOShH43a6JCEj?=
 =?us-ascii?Q?Z+H4BG3jDhRFjaqLNc+QdmCbiOj5v+9nppi9LYlQCShIFw6t4sPDWRXf/vhV?=
 =?us-ascii?Q?G9awnRiAtTjokSyHEioP/ua1rY9qAG1Nz6OroGmRzCuBvySZs6YMDiYoGWu6?=
 =?us-ascii?Q?LqS6K6IzUYbvM6wiBls1zkRFz7BiC+I3w/c1s/hV4W31gmy1bTJPSIwBLBzb?=
 =?us-ascii?Q?C2ZYdjSEgBnF0exiTV2xuYcY1SWfDEGgGrLkx+lypNWdlE5AU6whK0DVywxH?=
 =?us-ascii?Q?nqsmguasl0OaDbBTmOqFbmmcOkUk+WQsLN7H70wS0UUDh9mmAiP5H+R7DmrI?=
 =?us-ascii?Q?H34TOcTOcVa2rqIRtjtKanZ4fDXlOb2KvkOK33ul23YSx/9h/t0SQuKekI16?=
 =?us-ascii?Q?f+oxRQQN5PA8nRsd9Ze2i0ZwErly6PSFohJacbgl33/f4A/B7LzUcrr/4bub?=
 =?us-ascii?Q?T7Pk81YuRX3o9lOTBiWDAk8L9451jhatVp/oHFo2j3RAW7PjZeyOeTq+5+Q9?=
 =?us-ascii?Q?Yg+nSxQIzI+ap/LD963Ere9vmZmb4W05fBkhx70GNi2NESoB8Acih9egryOX?=
 =?us-ascii?Q?FyM5f1RTM4+KbbpXFubBSBHwj/PSEHELGOg5OqgQSytkq5zzuWB5oOxCpHwZ?=
 =?us-ascii?Q?hIhHykhGn6uq89n69AjhyHmtKc2MgVNowIBGia+zXTJQN/yaKp4Yp3kYoqux?=
 =?us-ascii?Q?ESF2KEWKQabmkU8QcxOoqRqvSHUoMb5Sb5wCv+Hw14z81flbnl6DD/GqxZy0?=
 =?us-ascii?Q?WbPsaKIofru83zaoKQ4Gw73xM5EOFzbS4wYA13WZAcBRAfGdvytntDKEyvJX?=
 =?us-ascii?Q?LhYlTDsYZFzVUJ0bQIO+wLe5aP99V37uzSlfZiJXtKkK9ax5y3BThlE3b0M8?=
 =?us-ascii?Q?ILR8Ah36gKQlv56OFL5bpLkrCQ8PfC/xVMwwgX3dU7mOfTnC3nEi/+w0Mk1x?=
 =?us-ascii?Q?VLCE1Up6N6fSXvnMyDHIEgIp7js83kQLJZD33L7yB3mlH3Kf59661tKn2RYw?=
 =?us-ascii?Q?I0DSTlAjIxasP7NeJFGfpnqFZIVo74uIQXQQ7+XX3IY8o6PSn+J3l0VxRg6B?=
 =?us-ascii?Q?R14kbEGYS7C6yySXrx+prziXpaCFdaIOewrayTF4iq/379ZI1Lo0j4/HkONS?=
 =?us-ascii?Q?VuhxH0I6B2R1MhoF1Ba3Ow116y8ltXvIJKOJ2GALfgROy+pxhY16DL0+Bofn?=
 =?us-ascii?Q?uK3/jpQ0BJbl8QpfCe5J9Exh9YAvE7aJkdooAYUJUXCbDnssWIGJR4e24bHK?=
 =?us-ascii?Q?4rERh92QzI9/IPFlD6GnoQsAl20uv5WJGMAALVbGK4wjM7h0RjNEKDEMf6Jy?=
 =?us-ascii?Q?Koun5Qj/cqvlO46dRJXrGr9eXgvZsgkRdypPea3vWQTVnXiSg9IDA3VkPeh2?=
 =?us-ascii?Q?qKi3iLGsFJiu4r6qsCsTtGHSvlNABNxObmX+ki6JWKvq9XgkqqrSiswVx81L?=
 =?us-ascii?Q?JE2/+mcq5vJkG/D3l1nLsGp8AOwmru+5ObJWdZXFDPhvxsnSY2sgy8O04AnX?=
 =?us-ascii?Q?D+x/2S/t4WW+HtBD1iuZWKtB3LWWHwpLXoif4KlkfNrXxbkNc6ULdsWsRfd8?=
 =?us-ascii?Q?HzrcjRkcEhkZsqYhCN0G2ss=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 26103cc4-b209-4359-9278-08dae1e0e76d
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6117.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Dec 2022 16:48:49.9081 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vAmoImixsL+XeEe2mTnaEfwXR8TXFAQVEMTJAiMSHKTcizqUteQ4owPIUit1SZA4hG3KIhNqp5X/fYW3CBz47GlrnDCyWWlHQE/e4cFWZvE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7256
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1671468533; x=1703004533;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=CJmJ1WgCQbtr6M6/Q3iNo5rQ+NqUOW6LVnb7GeicKR8=;
 b=f8oKeDMSvhtUSbwhb3ZXZWkz4VNwEW9qzmNSazREuEVQzY81vONTli0G
 VyCRMSutE6eTDVoMf5s+PS4MMV55Z1BByglhyjxZ2n6kRBWkRrumkMw+0
 hDbiK+5fQTN64G4HWDK+0nTF6qbmTt6Dp57cyCgcSyYk1cFWl87Ng/7l1
 MJYWVRXPZ7RUsnqf+k3D+EqjPk33gVIum05P6qBea6ZQRD8UjEHu6/+KB
 ng276/b51mCtiSye1E+jY1U7zjwIESbgQ8tUVbjAGpcWd2nR95WHUiX7N
 YPKtWVBHXkkcV76cMyhSnM7E2vMLaIAyMHkip3KsQv8O70u6wJLlRPw+4
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f8oKeDMS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [net-next v2 1/1] ice: Move support DDP code
 out of ice_flex_pipe.c
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
Cc: intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Sat, Dec 17, 2022 at 11:09:47PM +0100, Sergey Temerkhanov wrote:
> Currently, ice_flex_pipe.c includes the DDP loading functions
> and has grown large. Although flexible processing support
> code is related to DDP loading, these parts are distinct.
> Move the DDP loading functionality from ice_flex_pipe.c to
> a seperate file.
> 
> V2: Incorporate latest changes

Hi Sergey,

two things: versioning for single patches should go below --- line, second
thing is that this description tells us nothing. What are the 'latest
changes' ? :) I probably have to dig review on v1 to get the idea.

> 
> Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/Makefile       |    1 +
>  drivers/net/ethernet/intel/ice/ice_ddp.c      | 1919 +++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_ddp.h      |  449 ++++
>  .../net/ethernet/intel/ice/ice_flex_pipe.c    | 1904 ----------------
>  .../net/ethernet/intel/ice/ice_flex_pipe.h    |   69 -
>  .../net/ethernet/intel/ice/ice_flex_type.h    |  328 +--
>  6 files changed, 2370 insertions(+), 2300 deletions(-)
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.c
>  create mode 100644 drivers/net/ethernet/intel/ice/ice_ddp.h
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
