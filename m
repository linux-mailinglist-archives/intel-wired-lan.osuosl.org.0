Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E5FD7C4DAF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Oct 2023 10:52:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2B95B416A6;
	Wed, 11 Oct 2023 08:52:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B95B416A6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1697014322;
	bh=Wf9itGXIWFSwN9bi8tPmnTHfN5hHlqEXDCyuoUDNqkQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0diLKir9mNgniN7CIZ9cTTTET6I2SDz8+oeGwd1VbSKddIpBxkP29y3/MUSA5rey4
	 EMRnxZhWkjwQrL52/n5haYMWSybMYi7nObk9uifw+bkqcDXe8dXNX66F/TtzvY8mzQ
	 QJflV1Jduy0g89+fh6k90COuPMSz6mv+0Dz5mCIYVVuYTbzx/wJRMSYRJknuOcztBj
	 NLoF2t5anthT7BHDA7mmqkakBAO7ftSD06bSRg6/VLpasfqzdoe+azVaIRm/JEwS0F
	 UHOO+8C4mbQGi8yGNUNGa8XXLKrLhbUJ53dO2aslc3CDGigXrvFQ6QiDHzf8kxZzpC
	 41zxXPcpTXQAA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id s1xCMFgr0UkO; Wed, 11 Oct 2023 08:52:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B513340A8B;
	Wed, 11 Oct 2023 08:52:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B513340A8B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 9B5E41BF32C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:51:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7EAFA40A8B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:51:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7EAFA40A8B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5PIEJtau2CJ5 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Oct 2023 08:51:51 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A033D40160
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Oct 2023 08:51:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A033D40160
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="415657618"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="415657618"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2023 01:51:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10859"; a="927487534"
X-IronPort-AV: E=Sophos;i="6.03,214,1694761200"; d="scan'208";a="927487534"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orsmga005.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2023 01:51:50 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Wed, 11 Oct 2023 01:51:50 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Wed, 11 Oct 2023 01:51:50 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Wed, 11 Oct 2023 01:51:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JjJxs9AUJzcPGVyXBf2ybcn/vC+14EH6rKspnvVyaajE88uWicBdyPXepKORF9MPXI1RDO5sVr//Rli+JF3mokVZPMufL4wa1RrakzeC/7BFnH1wcIKh7ag+TrFzQ77PyxZIdH9NfUfKWEX48dn2Djm3H/FtjtMNJ3zdBUpU6zCBi2zGs07IcgJCFNcyMIn8L6funei0a0oTjG5kQ+lDAOurJs7Dbxc5lP0Wcd7BkL/I5inREwtmjA/joEvzmtFr0OuSvlYc55e1xN+l9oF5MXl0wMoxHC24mv1RkitvfoTJvRRwZVOPZ41UQw1p4SH1Sp2Mx2veersP7+5tHIxXZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gZFjdQUqmojfz1L7UBEOG9ldzBP9FTnwOALcSqFc+8I=;
 b=Y2VHY3zRteuaacueiao6wsJhWEw80rT3W/q7+xZ/9Z87950ocy5TU93z8gGM0hRpdC/JhjZnRrIMeQMb4Ipcocu1gQO8R4n4OEiINB5T0qcACsmDZREVg5010jGVXyf1wKkhgJ9m+wHAyQsYcxVNJ65B/7QAXgmFBU+ODK16N7dani2GabUsn4g2qKj6MWEwgFgg02e0L9COe8tqQLeXVV4I0Fr1VsTqij0wNAwcfYqt97ose5PiAjbx1DRFVb+WI3mzvvs7fJDEXw+R5fKKT1vVu8sRj8IETDoPzBXUrR6jrreH3jS0XKGqkB5iNfjcT+BnMJQRbdwEHGjmWuWIcQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SN7PR11MB7540.namprd11.prod.outlook.com (2603:10b6:806:340::7)
 by PH7PR11MB6697.namprd11.prod.outlook.com (2603:10b6:510:1ab::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.43; Wed, 11 Oct
 2023 08:51:48 +0000
Received: from SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::8947:cca7:ef62:7936]) by SN7PR11MB7540.namprd11.prod.outlook.com
 ([fe80::8947:cca7:ef62:7936%5]) with mapi id 15.20.6863.032; Wed, 11 Oct 2023
 08:51:48 +0000
Date: Wed, 11 Oct 2023 10:51:39 +0200
From: Larysa Zaremba <larysa.zaremba@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Message-ID: <ZSZiGxE2BOY/7WTs@lzaremba-mobl.ger.corp.intel.com>
References: <20231011080506.129043-1-aleksandr.loktionov@intel.com>
Content-Disposition: inline
In-Reply-To: <20231011080506.129043-1-aleksandr.loktionov@intel.com>
X-ClientProxiedBy: FR0P281CA0135.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:97::7) To SN7PR11MB7540.namprd11.prod.outlook.com
 (2603:10b6:806:340::7)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SN7PR11MB7540:EE_|PH7PR11MB6697:EE_
X-MS-Office365-Filtering-Correlation-Id: 6e2c47c6-8d5e-45d3-63e2-08dbca374dae
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: LcO27Q7SRKvl+qyd9NwY6TYxkOlDicRFomMYSWV+wSpFxrX+fk3ZYHO7E/kNYBZYcZJ1bys9doPJv31pUPkz5aMdv188T2S9BY0b7UBsNL3TFQvIBej3WXSHoUPDfrwslZ0jg66NvodVkzkqVu0u/snETD43GZDzUZaczSskvbVLJqeR5NInS0BjpLDyzzH6BSnA6zQ3Z8S/DIApufs2AVtum0/x4uWyzJ4brvc5W+8kttdOkI3TLGuMYQGWlHFzyY4H1DCGTYBR2NYVgjFD+bGCxvvmK/xptgmP84foT332MU+09rr8sNL5ChMgkZehXN7jegGxgMqyvi1yi/aRo6yozazHcyXFW20v5ujVgw8oMy+ja26I4551CkJfIfQfuSjDV19aMALMlt77ZP2I6ukVl2yIakrhNLHiX2bwnbO1lBRAyXnJYfW4lxKGPlDTbfQnB9eGeDxQwa5ttw7h1JUC1Iq7CFi8Prb9bNz9U3PHG5gJGBj7iu3XfSUSZ0rNY9cleX63r0Z/GyvViwA5xQp8p2jyxZ+7Rsyi4Zr6KFtQjZvYc5t+zmDTvURinJ88
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN7PR11MB7540.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(366004)(39860400002)(396003)(346002)(376002)(136003)(230922051799003)(451199024)(64100799003)(1800799009)(186009)(5660300002)(41300700001)(44832011)(8676002)(8936002)(4326008)(6862004)(86362001)(2906002)(82960400001)(107886003)(478600001)(6486002)(6506007)(6512007)(6666004)(26005)(316002)(6636002)(66476007)(66556008)(54906003)(38100700002)(66946007)(83380400001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?3eV/qzhEoN0BSEdfozUTwf7n+SjSMUQronJSawpCqa+B6epV3UZu1D0E7nXX?=
 =?us-ascii?Q?QXvml9ByXF18m5h5MEbQqe0JM/9r5ChENNYoezUf4JPTAPflur1b31a1zzE5?=
 =?us-ascii?Q?civk0YA64ENmSU/31VR3R33ksenZ0+Ml/uK9VrwN/Ds07oO9se7BFNw/+Coe?=
 =?us-ascii?Q?4dgOkIb91HXWYsuKn1xVD8EHdDQ25c4gILsq+QblWFJwy6ryrWmkQbPg7yoJ?=
 =?us-ascii?Q?vGwTY2HV3JFkDHiGafCmy5rphnwqBHLLfVCy1+ab/oHt2aLo2s+OznVIhxvI?=
 =?us-ascii?Q?fqFShDXd3KKDVA4wAirdzuvy1MfY1DyX2AWM8J6N+0jevYpIuqYCtW7XkJcn?=
 =?us-ascii?Q?M/23s1Fq+dDeeWfIoKArfddF3IsbmLB8oUGNELhuamxrHolyKEBkir9kpWRf?=
 =?us-ascii?Q?RIDkdqAqGYd1vtLnz4AaA++Hyf4XaBUMfax3mnXz7gKkYSNNsWrmFFUDpWFD?=
 =?us-ascii?Q?MUezpoYgZwu91bf5URHXKC31nj+DLopxTJKwwgr88NSQV9SjrPf5EXriMN8B?=
 =?us-ascii?Q?c0t+V4FRJinn3hQzMc13LGKe4ko5vu5GVaSC71YWOXb1NeKoUIHQy8BVP6hS?=
 =?us-ascii?Q?903zX2vURgKUI433YAwaC65HBWIV/awRLOwrgP7spGwfwSL1gklVDmv81Kni?=
 =?us-ascii?Q?FMQPsDUwWkVmdb7IeuS34R2Kg0GRC7G88KtVdwBFUrPOqsrn/0mKznTXLKrT?=
 =?us-ascii?Q?67fznG0z0FEfVUyMBodEhOrNy6mm1OXCYTf3cm1r+tjEAYGugkzWtYLQ8uqY?=
 =?us-ascii?Q?PtafsR2fbrcOhSlPuIjSLj7v/xrJv/Pg/x1Yq2f9pCGEcvbaonGIo7RkUY+1?=
 =?us-ascii?Q?MQ6hTSup2EA5+FJDaRjZi6+uGO9s/owXju4IO8WQQZGelO8EAYSsAXb+JOnV?=
 =?us-ascii?Q?lhpmeuzb1oemMYOHFrbYPZarKfZsNBa0qJYoMkqnYRHbkTbzQaWirqgtDsgp?=
 =?us-ascii?Q?DJYAPX/aERu/+qBKVFYE8Gn9cpqVtzkyhLLLxYVbtE/oLoTbt3r5QzjVnA74?=
 =?us-ascii?Q?uKEhKiJlvdR6ZneI91RT2vUMCS+HEvh/+xIkjJpnA781wN+QvWrz9clUsowj?=
 =?us-ascii?Q?1yOSwBTxzsvyVCY20SEG4eNHUxqD+eDHgicR7xcnHkK3NhvlMHaVAVYzwYCf?=
 =?us-ascii?Q?sB4cw+6ibVudo/zhKGdC0Fkkd5lJPCEh/idAd+U+lmLjd+oe+rJqUIMGLdxj?=
 =?us-ascii?Q?DFmENAS/Dxw9WuBn0TQk9KFOJXOwYstqDYfuZciwXevF+GDrsb8gKlpFyrHq?=
 =?us-ascii?Q?du+DvT04vP3HmKroFDLaNDfB+LDLpMwav/xlcob3a7OhZFuFBvJzlpXNcEeU?=
 =?us-ascii?Q?y2tk4lxsK9/e/I8CfBCWP1PXfpuu/EMQB+hN0xp6CJvYsgoJu/U6tE7f/Z8J?=
 =?us-ascii?Q?4fzOej7VMW79oqM5USS7Xv5T3gb8vPZDjjyOgX3U8rW0PG5nQ3ha7tPvFJgb?=
 =?us-ascii?Q?ktgTtMF+2wbGdb/iHahCFsOFfaZdAsjf5FE4MCtG0v9BF2muFs37pdIeW8A3?=
 =?us-ascii?Q?iaqyMZUfbPrjmOTIemzniEmMCxObSYYbbajEecgY1Be59LbpNw/IsBXLJfRF?=
 =?us-ascii?Q?0/1/Uden473GWAPGgRo/DjhAoJ/ZiDIk+ljMTRlNemJ/7wOoo5rNP4IZU7au?=
 =?us-ascii?Q?IQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6e2c47c6-8d5e-45d3-63e2-08dbca374dae
X-MS-Exchange-CrossTenant-AuthSource: SN7PR11MB7540.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2023 08:51:47.9966 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +GZVmE+iLFnZrPZ9Dyonbgvl1xbjQx1tLiPitbqgfRxqleMktDOWvCgmw9GhSV+LTFnJtWjkpLlBIrWu/4DXmZEo7lMn+1Fog99+1bn5OlY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6697
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697014311; x=1728550311;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=Ym9q22uVJjoRDGXfiCqF3dHWRhyMQKKTZIiWWq21aoQ=;
 b=Aq0l4xlv0Zs+/mV+A0RtGlizOMOsksrxrV/7x+CQQDozqyBEFEatMyDJ
 yr7lQM74eJ3Mdjkt0ugxDXnDI5z4J3QKwADhYTSHneedU84YwVFQnyxyx
 zAiZN2Nh9PGgeMlnWbIJZy1wv7vsVA+o4MhADOP2Em5z7BHpY1P2+c8R/
 8KRevB9WEl8V5+74yF7PZNXQRSfTGY5YdBmTE8kk511fNNDShoRK+Htqi
 tq8GmpHOLHQsP+R7LOXS6KgmT4tiAN0xPLgKmXzHMkfeDwIu+kIl79vjs
 MfuugT2cb3/h6SKsW0hFE+HfsR9PKB98Nt5XTnH2wKQQCGrkZx8l0t2q6
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Aq0l4xlv
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1] i40e: add restore default
 speed when changed PHY doesn't support it
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, anthony.l.nguyen@intel.com,
 Larysa Zaremba <larysa.zaremba@intel.com>, intel-wired-lan@lists.osuosl.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Oct 11, 2023 at 10:05:06AM +0200, Aleksandr Loktionov wrote:
> In order to avoid no link after plugging a different type PHY module.
> 
> Add reset link speed settings to the default values for PHY module,
> if different PHY module is inserted and currently defined user-specified
> speed is not compatible with this module.
> 
> Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
> Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
> Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
> Reviewed-by: Zaremba, Larysa <larysa.zaremba@intel.com>

First of all, I did not give my Reviewed-by, so please resend the patch without 
it, otherwise NACK. Especially considering the tag is malformed, which has led 
to broken CCs.
Also, "Reviewed-by" must go before the SoBs.

> ---
>  drivers/net/ethernet/intel/i40e/i40e_main.c | 65 +++++++++++++++++++--
>  1 file changed, 61 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
> index d0d0218..6829720 100644
> --- a/drivers/net/ethernet/intel/i40e/i40e_main.c
> +++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
> @@ -10076,6 +10076,55 @@ static void i40e_reset_subtask(struct i40e_pf *pf)
>  	rtnl_unlock();
>  }
>  
> +/**
> + * i40e_restore_supported_phy_link_speed - Restore default PHY speed
> + * @pf: board private structure
> + *
> + * Set PHY module speeds according to values got from
> + * initial link speed abilites.
> + **/
> +static int i40e_restore_supported_phy_link_speed(struct i40e_pf *pf)
> +{
> +	struct i40e_aq_get_phy_abilities_resp abilities;
> +	struct i40e_aq_set_phy_config config = {0};
> +	struct i40e_hw *hw = &pf->hw;
> +	int err;
> +
> +	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
> +	if (err) {
> +		dev_dbg(&pf->pdev->dev, "failed to get phy cap., ret =  %i last_status =  %s\n",
> +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
> +		return err;
> +	}
> +	config.eee_capability = abilities.eee_capability;
> +	config.phy_type_ext = abilities.phy_type_ext;
> +	config.low_power_ctrl = abilities.d3_lpan;
> +	config.abilities = abilities.abilities;
> +	config.abilities |= I40E_AQ_PHY_ENABLE_AN;
> +	config.phy_type = abilities.phy_type;
> +	config.eeer = abilities.eeer_val;
> +	config.fec_config = abilities.fec_cfg_curr_mod_ext_info &
> +			    I40E_AQ_PHY_FEC_CONFIG_MASK;
> +	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
> +	if (err) {
> +		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %i last_status =  %s\n",
> +			err, i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
> +		return err;
> +	}
> +	config.link_speed = abilities.link_speed;
> +
> +	err = i40e_aq_set_phy_config(hw, &config, NULL);
> +	if (err)
> +		return err;
> +	err = i40e_aq_set_link_restart_an(hw, true, NULL);
> +	if (err)
> +		return err;
> +
> +	pf->hw.phy.link_info.requested_speeds = config.link_speed;
> +
> +	return err;
> +}
> +
>  /**
>   * i40e_handle_link_event - Handle link event
>   * @pf: board private structure
> @@ -10086,6 +10135,7 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
>  {
>  	struct i40e_aqc_get_link_status *status =
>  		(struct i40e_aqc_get_link_status *)&e->desc.params.raw;
> +	int err;
>  
>  	/* Do a new status request to re-enable LSE reporting
>  	 * and load new status information into the hw struct
> @@ -10109,10 +10159,17 @@ static void i40e_handle_link_event(struct i40e_pf *pf,
>  		    (!(status->an_info & I40E_AQ_QUALIFIED_MODULE)) &&
>  		    (!(status->link_info & I40E_AQ_LINK_UP)) &&
>  		    (!(pf->flags & I40E_FLAG_LINK_DOWN_ON_CLOSE_ENABLED))) {
> -			dev_err(&pf->pdev->dev,
> -				"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\n");
> -			dev_err(&pf->pdev->dev,
> -				"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
> +			err = i40e_restore_supported_phy_link_speed(pf);
> +			if (err) {
> +				dev_err(&pf->pdev->dev,
> +					"Rx/Tx is disabled on this device because an unsupported SFP module type was detected.\n");
> +				dev_err(&pf->pdev->dev,
> +					"Refer to the Intel(R) Ethernet Adapters and Devices User Guide for a list of supported modules.\n");
> +
> +				return;
> +			}
> +
> +			dev_info(&pf->pdev->dev, "The selected speed is incompatible with the connected media type. Resetting to the default speed setting for the media type.");
>  		}
>  	}
>  }
> -- 
> 2.25.1
> 
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
