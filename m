Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 219837309CB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 14 Jun 2023 23:24:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AF95441ECC;
	Wed, 14 Jun 2023 21:24:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org AF95441ECC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686777884;
	bh=0yyqJGxERePyVcefpUdzDeYqg8H9bzR+AZwp74ZlwE8=;
	h=Date:To:References:From:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=z/kSX5TpgzUR8lsQ7S1AVjokw9RoIPfDpTGpNiuH3g80YEUyvxBznfPg0OPkj4sZM
	 ihnsr7IwEvFe3ylUdhWCtf3V7BvYUb++e5QGK+y6XErvDbnySTEQyvas8/+iXZa9u2
	 sbOWKVfHZXYAPGxqU1WC2CmPxMEocTIjCE5GquHO8rrw7ty6fDebxqSzGJ/7ePXDCG
	 wvcndcO+7Q1zBp4K/1C4FGsvlGByEbb7rygWD0AtWYKQQdDnkNrp6xF1aToZFIaw+K
	 vtj1w4s10HJobnh/P1XjnLPByY8I4TurFmJ5CSOuM3dsdGj4jQgxkcLjqpz1zNuXwV
	 M6qct0zq4dFtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wdpvz3i0B9GH; Wed, 14 Jun 2023 21:24:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0397A41E0D;
	Wed, 14 Jun 2023 21:24:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0397A41E0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6561A1BF2A1
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3E4A6418A5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3E4A6418A5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ei02kb5NYsng for <intel-wired-lan@lists.osuosl.org>;
 Wed, 14 Jun 2023 21:24:36 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 523E64189E
Received: from NAM04-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam04on2085.outbound.protection.outlook.com [40.107.101.85])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 523E64189E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 14 Jun 2023 21:24:36 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ipXvKdtJfx8UA38ATzFR6OqaAOvH46l2CplHTwo6NzP/aNtkf5/ZTZAsnDjQSK87TumHg4Qcahoz6r2kf4R2Ovo7vxrgncr+Gdp4ehkkjYau1q2NcF3QJ2yrr1QAQHxtklIpXscRAAEfOOsz/MZU0dizDf0iU3gMMw6hOi7h7m5+7W+EveC4PETfik4zSr7ZX4PBueWIqz2J4HaUxduJMUVxyzNZx0tSqYAemvugP8LEJlUe9GDDUGSjkhy7f7lMlvCRdOjriaQ3OB4JTq5F72BvhVW7XMqrwuahgPCQfHCXzvj86cKKH7EMyDncQvj0FDkOw7AbbhkBjArkGLYnjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=wifz5mBqB9sx/jC+JgKxlPEXSReueaVgcLUWNZ02jO4=;
 b=d4TtoTDCplJjCcWDTM7ckj5XBHuiSHd73S0Id+SL7mAsbGyZ9fb2ijZ7J5viFBupbNts3PLtyEG+TRoDI9naRsLky2JWKsTQTBuKEN00kQCBiz4uL0A81gyDiV4BpwNICvUji4+hRm2/zPl1hUvXv8JC3DN9bChvSqeMM4I0WrutqYkKpKhaGd4IBEaIp1ZoAZx6dPNLsdupC552VOp9Xru1Gmg5aISZ5nqF0vyMefgdFPLq7Ibtf7ywiWhbq8QPT9+pKK0GqEj43RcfrOTqsuAHDdR6ptiX174hMdOqgBJ2lvD3huYtUroZZmkQ+URXq5weuqRHyjE4YoMBuc4NFw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=amd.com; dmarc=pass action=none header.from=amd.com; dkim=pass
 header.d=amd.com; arc=none
Received: from PH0PR12MB7982.namprd12.prod.outlook.com (2603:10b6:510:28d::5)
 by MN2PR12MB4062.namprd12.prod.outlook.com (2603:10b6:208:1d0::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6477.29; Wed, 14 Jun
 2023 21:24:34 +0000
Received: from PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e]) by PH0PR12MB7982.namprd12.prod.outlook.com
 ([fe80::d065:bf1f:880e:543e%3]) with mapi id 15.20.6477.037; Wed, 14 Jun 2023
 21:24:34 +0000
Message-ID: <fb5e5541-3875-5310-8380-f5b1d3888e6e@amd.com>
Date: Wed, 14 Jun 2023 14:24:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Dave Ertman <david.m.ertman@intel.com>, intel-wired-lan@lists.osuosl.org
References: <20230609211626.621968-1-david.m.ertman@intel.com>
 <20230609211626.621968-7-david.m.ertman@intel.com>
From: Brett Creeley <bcreeley@amd.com>
In-Reply-To: <20230609211626.621968-7-david.m.ertman@intel.com>
X-ClientProxiedBy: BYAPR11CA0070.namprd11.prod.outlook.com
 (2603:10b6:a03:80::47) To PH0PR12MB7982.namprd12.prod.outlook.com
 (2603:10b6:510:28d::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR12MB7982:EE_|MN2PR12MB4062:EE_
X-MS-Office365-Filtering-Correlation-Id: b8749185-cf37-430a-3803-08db6d1dbfa9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: HD8y0sX/Myfxx8bzpUyGPmIwJSaNc7jNG6+XOeUZMN63aeBicC5OZ3vs+kxboxTZ4iVdPWqdsE01EZf028ToOIu3PDwSJU1a5Py2XedPjbNeyGqXjhn/NfoSPvtEUPO2x+MeVGoxmxq1oN1+OHRpRhZuxuH7LPQJyTUKvOtDX+LPbtjl8MC91hqRNOIDxbemfJdieRSxgEKV23LXJeprFLcbznM9I+uzAVrnKq8ez8EpqENDzswmr32xg9hda+G6fG+fnxjtSyNkSNvvA2p6LUAfiPSW3gxR/LXRSxCFRs+MwkWVv7j+nYilWXMVsEPH2EsAOQc9Rm4vum4BCitpQsgMOwLLuOSIty11AbB1x0pffG0iFoF64XF9Oxi1xAwJuRhmlUwcSMiSvOPPfIZ6Kee3f43EYKbN2xSnPMAAxNJaJ30YKqSsA/oFu6OB2+e9iRGB2Xfr+5Bdc487EMmG5j2wtq3FtWkdUt3+V20PUDZm8aXaENMb1XkHQzBzraNWwn4vVgW2Q8U7BbF0GGD6o5NWwa9Tw+bwx92DJbNtWZVjNar/fDRvLSrZteq3Z/UaJ0P8EszU1/+3bcAnyfpd7/K+prpcpddIEEnd8ktEzql/HHAOQqv21C/cfj9Gq6OXsRux2/iQ7Bpez9EzAbq3Aw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR12MB7982.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(39860400002)(376002)(346002)(396003)(136003)(451199021)(2616005)(83380400001)(36756003)(31696002)(38100700002)(478600001)(8936002)(6486002)(8676002)(2906002)(4326008)(5660300002)(66476007)(66946007)(66556008)(31686004)(316002)(186003)(53546011)(41300700001)(6512007)(26005)(6506007)(43740500002)(45980500001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cHA5bTlZcmoyUXBpOGJ3VEVCV1pUa3p6TVpCY2Zoak56Qm9mU1gwSGJucFRX?=
 =?utf-8?B?RlZoN0NRTzkrT0k0cVpzeDRiMmdJQ0t0N0lKVmM3SDV1WG40SzNEemYxVG5l?=
 =?utf-8?B?elZNcmJITXRXdWdUSU4vbFdPeWd3YzVuSkNYc2ltOVZ0bHFJU1VjNGZSZERH?=
 =?utf-8?B?dmFFVnpJYll2bCtXNWQ2OVFqZFJIUnJ3anEyaGRTUERYZDRzYjlnbVR5Z2RX?=
 =?utf-8?B?UmMwdm80TEM5OXRNMXNrN1p2T3hQVGxrNjJvK0ZZdjhUcGpnSmlWK3NZR3BT?=
 =?utf-8?B?a3ZsUStXdHhaemthUDkzdE04R3FSUmFMd2ZKOEFhUm9mdDNJbyt3Z3VjbkI1?=
 =?utf-8?B?d2VJRWJEWk1KU2k2STcrdDB6MHNUeTRiS2lJVG8zNUZudnFzOTVob25jMENi?=
 =?utf-8?B?Zi9PeWJjcWxIV3UxWDdKRnF1VnkrQmNUeENia0tRVGtvTFBKSGtSQ053MDBZ?=
 =?utf-8?B?d05USDJvall1OXlWQ2s2eDluWUw1U0Mva0t5Zm80ZURDNnM2eXRDeFE1SkZq?=
 =?utf-8?B?QVVkaStVaXVicEVpS20vUkpFeVlqVkpYbGJLcFhMam82eVRFK3VaZlpQRVF4?=
 =?utf-8?B?STdLbE1zb0g0WmNTSm5WamV3a0ttdWZqdDE3d1ZRaFl1ckxmbXV1cTVGdHJQ?=
 =?utf-8?B?SkJwYngxdE80Tlk0VjdJcUhKNEQ3ZThqZG1raGNJK2VEOTM2NXF3NmJnODNU?=
 =?utf-8?B?WG1HV1NEWFJ6VkdQUHI3emlyWWtEc3ZHSHNqWmtBenFGNnRkbFpUdGc5N3Fm?=
 =?utf-8?B?ZlU0RDZ4aTZoS1lieUZXNzNMN1gzeTZVNXVPbExkN2RURHorOEdWN0toR1lK?=
 =?utf-8?B?ZlBWbGdTSDdIVTByK3ppczJDQU5TNDJKSzNkdktIQ1JBSWMrYWpmZUVXeHZr?=
 =?utf-8?B?NzYxWmhOUDJ2MlowcElRcFJ1S0wzSmpTMkI4Y2Mva3JVZ1FBR1NVK1VnM0VM?=
 =?utf-8?B?VHhoSzBBTkp4L3NWYkU2SlJ0T2JnT1JzeHdITmkraU15Z0VWaDlSdlV1WWtr?=
 =?utf-8?B?SSt2Zkpsd0hXTE1QZFVYeGFFbzJ0b1dGcllqTWRiVklLLzFvZEZyck9pbFNo?=
 =?utf-8?B?dlVQbkRLUC9NZDlmbEVzVXFQTnlSR0xjVVhBbzVWSUVJdXE1RGs4Y2k1cDFl?=
 =?utf-8?B?cjdrdDAwN3RwaS9kNWVCZlh3R1p6OWs1cGxZdDBuTjNMM2t4THRZZ2QxdHUy?=
 =?utf-8?B?cS9kbTc3blY0Qll5ZGxhdzZNK0ZIbDBEVkNhQXh0V25DNjBaZVhhZ1ByYmFv?=
 =?utf-8?B?ejVNM1daNm1ybWk3SDJab3NleXYvU2ZIOWRjRnVYcDhsVFhUV3BLeVNHaERR?=
 =?utf-8?B?T2FpNjRUVyt5Mm14ZHRjQm91TzNjOWFRWUpnbWFSek9idFVYTjl0RjU2NHRk?=
 =?utf-8?B?c2N2WENSZFJNY0IwdU8xdGRjN0xDdkRHbk5yL2oxUXQ2alVzeFc2Rnc2UC9o?=
 =?utf-8?B?QVpsSnRFTlZRamhlZ2NaZDY4alpHMHllRmR1Tm5DdzIrSlJ5MTBWZHhsTjVq?=
 =?utf-8?B?bEZvYjRmb3lVSEJsU1EyS3UwbWZhWEFjT3VHYitWTG84Rk1UWFEwblBWTlJw?=
 =?utf-8?B?K1lMQnhNYUJhbWZ5bllkV2kzUkp0SzBXZ0lPRDIzNTNmRFpOY1FuVlhsUVZh?=
 =?utf-8?B?cjFTQ3dyc3Y4VmpzRnN2dGNPWEtmUEZGZlp3TTlKSElSdUlyaExySm9NV1o0?=
 =?utf-8?B?Kys0MFp6NENSR1JzRElWdS8yQXN3QnoySm1ScFAzSUo3WFhaL0h4ZEFuYkU1?=
 =?utf-8?B?dWFuSzNjTGFPRVVLbU9sZmNnV1Z5cUxPZGtvNENFQjk3WHhTWDZCOFA0MlVk?=
 =?utf-8?B?cm9SMUZOd1pQY0pUcjVyQldCK3Fua3lrTGVkK2hHd21RZC9XMTNVZGxBWmVZ?=
 =?utf-8?B?RmFnQXBUQnd3MTZZQ3o3Wk5NdGdUWExDcVdXRXZHQU1qTXp0RWFLNk5acEoz?=
 =?utf-8?B?cFlzSmZvSVVlMHlDRkpMODVGR3VSZU9xcVZseU1TK1VqQ1VxU3J1YXRISXpB?=
 =?utf-8?B?cVJ4YmhDOFVlK0dWSkxyVnlUNUZFUnQ0UE01ZzRlWmowT2R2NkFLdk9tendW?=
 =?utf-8?B?blFJT211TEhnWFJ1eUl5b2ZCUGpIK0lVelpSQU1vclY3YWNUZkVSWFQvQTNR?=
 =?utf-8?Q?rDHO8rCVy1wFcCE7UQvOJGpvu?=
X-OriginatorOrg: amd.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8749185-cf37-430a-3803-08db6d1dbfa9
X-MS-Exchange-CrossTenant-AuthSource: PH0PR12MB7982.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Jun 2023 21:24:34.1018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 3dd8961f-e488-4e60-8e11-a82d994e183d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 98Dt4IFTBesmmomhpmEhYqa6AI1Nfm8edfmqpBJQJgm0TJ1XHAFQaLsYigGU/Rl/gF5mN/cxfizMqvU/0fmnUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR12MB4062
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amd.com; s=selector1; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=wifz5mBqB9sx/jC+JgKxlPEXSReueaVgcLUWNZ02jO4=;
 b=a1udcHRUk1nP9HoiZBt4/+RjX00M23nnk4oL5IYLf36vrtozjWiDCFSfg2uTz36QGDkjvR9Do6tIlEUIUXsLE/yt8AoTfMh9FVZhcL/rUJvNagcBjTuW8xxtNquxWuqHxCryj3ka3ENwkl2sO0/DmEjmTiGTjYR3QzOwqTWcNeY=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=amd.com header.i=@amd.com header.a=rsa-sha256
 header.s=selector1 header.b=a1udcHRU
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=amd.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v4 06/10] ice: Flesh out
 implementation of support for SRIOV on bonded interface
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
Cc: simon.horman@corigine.com, daniel.machon@microchip.com,
 netdev@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 6/9/2023 2:16 PM, Dave Ertman wrote:
> Caution: This message originated from an External Source. Use proper caution when opening attachments, clicking links, or responding.
> 
> 
> Add in the functions that will allow a VF created on the primary interface
> of a bond to "fail-over" to another PF interface in the bond and continue
> to Tx and Rx.
> 
> Add in an ordered take-down path for the bonded interface.
> 
> Reviewed-by: Daniel Machon <daniel.machon@microchip.com>
> Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
> ---
>   drivers/net/ethernet/intel/ice/ice_lag.c | 821 ++++++++++++++++++++++-
>   1 file changed, 811 insertions(+), 10 deletions(-)
> 

[...]

> +/**
> + * ice_lag_qbuf_recfg - generate a buffer of queues for a reconfigure command
> + * @hw: HW struct that contains the queue contexts
> + * @qbuf: pointer to buffer to populate
> + * @vsi_num: index of the VSI in PF space
> + * @numq: number of queues to search for
> + * @tc: traffic class that contains the queues
> + *
> + * function returns the number of valid queues in buffer
> + */
> +static u16
> +ice_lag_qbuf_recfg(struct ice_hw *hw, struct ice_aqc_cfg_txqs_buf *qbuf,
> +                  u16 vsi_num, u16 numq, u8 tc)
> +{
> +       struct ice_q_ctx *q_ctx;
> +       u16 qid, count = 0;
> +       struct ice_pf *pf;
> +       int i;
> +
> +       pf = hw->back;
> +       for (i = 0; i < numq; i++) {
> +               q_ctx = ice_get_lan_q_ctx(hw, vsi_num, tc, i);
> +               if (!q_ctx || q_ctx->q_handle == ICE_INVAL_Q_HANDLE) {

Should q_ctx->q_teid be checked against ICE_INVAL_TEID as well? If so, 
the dev_dbg() should also be updated.

> +                       dev_dbg(ice_hw_to_dev(hw), "%s queue %d %s\n", __func__,
> +                               i, q_ctx ? "INVAL Q HANDLE" : "NO Q CONTEXT");
> +                       continue;
> +               }
> +
> +               qid = pf->vsi[vsi_num]->txq_map[q_ctx->q_handle];
> +               qbuf->queue_info[count].q_handle = cpu_to_le16(qid);
> +               qbuf->queue_info[count].tc = tc;
> +               qbuf->queue_info[count].q_teid = cpu_to_le32(q_ctx->q_teid);
> +               count++;
> +       }
> +
> +       return count;
> +}
> +
> +/**
> + * ice_lag_get_sched_parent - locate or create a sched node parent
> + * @hw: HW struct for getting parent in
> + * @tc: traffic class on parent/node
> + */
> +static struct ice_sched_node *
> +ice_lag_get_sched_parent(struct ice_hw *hw, u8 tc)
> +{
> +       struct ice_sched_node *tc_node, *aggnode, *parent = NULL;
> +       u16 num_nodes[ICE_AQC_TOPO_MAX_LEVEL_NUM] = { 0 };
> +       struct ice_port_info *pi = hw->port_info;
> +       struct device *dev;
> +       u8 aggl, vsil;
> +       int n;
> +
> +       dev = ice_hw_to_dev(hw);
> +
> +       tc_node = ice_sched_get_tc_node(pi, tc);
> +       if (!tc_node) {
> +               dev_warn(dev, "Failure to find TC node in for LAG move\n");

Nit, but seems like there's a stray "in" in the log message?

> +               return parent;
> +       }
> +
> +       aggnode = ice_sched_get_agg_node(pi, tc_node, ICE_DFLT_AGG_ID);
> +       if (!aggnode) {
> +               dev_warn(dev, "Failure to find aggregate node for LAG move\n");
> +               return parent;
> +       }
> +
> +       aggl = ice_sched_get_agg_layer(hw);
> +       vsil = ice_sched_get_vsi_layer(hw);
> +
> +       for (n = aggl + 1; n < vsil; n++)
> +               num_nodes[n] = 1;
> +
> +       for (n = 0; n < aggnode->num_children; n++) {
> +               parent = ice_sched_get_free_vsi_parent(hw, aggnode->children[n],
> +                                                      num_nodes);
> +               if (parent)
> +                       return parent;
> +       }
> +
> +       /* if free parent not found - add one */
> +       parent = aggnode;
> +       for (n = aggl + 1; n < vsil; n++) {
> +               u16 num_nodes_added;
> +               u32 first_teid;
> +               int err;
> +
> +               err = ice_sched_add_nodes_to_layer(pi, tc_node, parent, n,
> +                                                  num_nodes[n], &first_teid,
> +                                                  &num_nodes_added);
> +               if (err || num_nodes[n] != num_nodes_added)
> +                       return NULL;
> +
> +               if (num_nodes_added)
> +                       parent = ice_sched_find_node_by_teid(tc_node,
> +                                                            first_teid);
> +               else
> +                       parent = parent->children[0];
> +               if (!parent) {
> +                       dev_warn(dev, "Failure to add new parent for LAG move\n");
> +                       return parent;
> +               }
> +       }
> +
> +       return parent;
> +}
> +

[...]

>   /**
> @@ -625,6 +1321,73 @@ static void ice_lag_monitor_active(struct ice_lag *lag, void *ptr)
>   static bool
>   ice_lag_chk_comp(struct ice_lag *lag, void *ptr)
>   {
> +       struct net_device *event_netdev, *event_upper;
> +       struct netdev_notifier_bonding_info *info;
> +       struct netdev_bonding_info *bonding_info;
> +       struct list_head *tmp;
> +       int count = 0;
> +
> +       if (!lag->primary)
> +               return true;
> +
> +       event_netdev = netdev_notifier_info_to_dev(ptr);
> +       rcu_read_lock();
> +       event_upper = netdev_master_upper_dev_get_rcu(event_netdev);
> +       rcu_read_unlock();
> +       if (event_upper != lag->upper_netdev)
> +               return true;
> +
> +       info = (struct netdev_notifier_bonding_info *)ptr;
> +       bonding_info = &info->bonding_info;
> +       lag->bond_mode = bonding_info->master.bond_mode;
> +       if (lag->bond_mode != BOND_MODE_ACTIVEBACKUP) {
> +               netdev_info(lag->netdev, "Bond Mode not ACTIVE-BACKUP\n");
> +               return false;
> +       }
> +
> +       list_for_each(tmp, lag->netdev_head) {
> +#if !defined(NO_DCB_SUPPORT) || defined(ADQ_SUPPORT)
> +               struct ice_dcbx_cfg *dcb_cfg, *peer_dcb_cfg;
> +#endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */

These #ifdefs don't belong here.

> +               struct ice_lag_netdev_list *entry;
> +               struct ice_netdev_priv *peer_np;
> +               struct net_device *peer_netdev;
> +               struct ice_vsi *vsi, *peer_vsi;
> +
> +               entry = list_entry(tmp, struct ice_lag_netdev_list, node);
> +               peer_netdev = entry->netdev;
> +               if (!netif_is_ice(peer_netdev)) {
> +                       netdev_info(lag->netdev, "Found non-ice netdev in LAG\n");
> +                       return false;
> +               }
> +
> +               count++;
> +               if (count > 2) {
> +                       netdev_info(lag->netdev, "Found more than two netdevs in LAG\n");
> +                       return false;
> +               }
> +
> +               peer_np = netdev_priv(peer_netdev);
> +               vsi = ice_get_main_vsi(lag->pf);
> +               peer_vsi = peer_np->vsi;
> +               if (lag->pf->pdev->bus != peer_vsi->back->pdev->bus ||
> +                   lag->pf->pdev->slot != peer_vsi->back->pdev->slot) {
> +                       netdev_info(lag->netdev, "Found netdev on different device in LAG\n");
> +                       return false;
> +               }
> +
> +#if !defined(NO_DCB_SUPPORT) || defined(ADQ_SUPPORT)
> +               dcb_cfg = &vsi->port_info->qos_cfg.local_dcbx_cfg;
> +               peer_dcb_cfg = &peer_vsi->port_info->qos_cfg.local_dcbx_cfg;
> +               if (memcmp(dcb_cfg, peer_dcb_cfg,
> +                          sizeof(struct ice_dcbx_cfg))) {
> +                       netdev_info(lag->netdev, "Found netdev with different DCB config in LAG\n");
> +                       return false;
> +               }
> +
> +#endif /* !NO_DCB_SUPPORT || ADQ_SUPPORT */

Ditto on the #ifdefs

> +       }
> +
>          return true;
>   }
> 

[...]
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
