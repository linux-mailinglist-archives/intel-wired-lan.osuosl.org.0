Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C008AA3CF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 18 Apr 2024 22:08:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94BA541561;
	Thu, 18 Apr 2024 20:08:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6kF60Py0tL8P; Thu, 18 Apr 2024 20:08:30 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org CF81140144
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1713470909;
	bh=NuM9KyT7EKwq08S57ccqrXCVBbGKjdyx+T53nDRJnt4=;
	h=References:From:To:Date:In-reply-to:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DOdizzJAMpvuHlKwa3NdsFb0H8b4Ai5TRwAe7L2YPH3wZ5CQ5c/p9uXeUtuqhWO7F
	 mtBL7Au42Eo+TglMtJD1aelOMAJ8YbUjmtTEPg/1DYhniplunp5zAUUCt/O5segmSp
	 L+xBTsvIRqPKlfOmcnWaPJtbwXQR2ZKwv7vie3gSnCpe/Qh6YiB/6fl7rfcUIDk+tb
	 UfLahJHjQkF5HeWTyPoODdrwVw7LKo+lyM/blnqDym8euxbvwiZv87aq2+l77hXHkR
	 OEP8WHUkf6H0MGEp51bBDwAN5rRDANhNc0e+JF/4B03kr1dA42bnENpUIEraoQo7F9
	 EnVGG2XC8hS3g==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id CF81140144;
	Thu, 18 Apr 2024 20:08:29 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 45F761BF33E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:55:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3CE9B60A67
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:55:18 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aXJxnpVwMzVY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 18 Apr 2024 19:55:17 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=40.107.244.48;
 helo=nam12-mw2-obe.outbound.protection.outlook.com;
 envelope-from=rrameshbabu@nvidia.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6005D608F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6005D608F8
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2048.outbound.protection.outlook.com [40.107.244.48])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6005D608F8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 18 Apr 2024 19:55:17 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=a+sQx0Pfj2Fs8Bv+fpmMorbEvQ6buNtX1m4wOb+oVKU/fD4otnX/2wC1/gBUbwFS1SWvEEXsACo+vBTIfqcd/l5V2kEHO2QBWDAoGIDNwd6fpwYm5eTmDb5CNax07EHHRp4rSZ8OjpmP54iPLZBKjcwNDTpmLLZtCugE6srDdETdi19ZezoeHLgvBoo3T8iKNMBmUQeLiYBunT2XwZUNEByr+vFHmVs/V5Qx7JIP4cwnIU1+Y72ObMKN3Ljo26EQErI6wZfPRuW2U7o4cSnOaK7EIRrbavouTh03hjAZWRiwO9elqOem73gghkHcZU0kWACocsD1OzeqU4TnM+Pptg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NuM9KyT7EKwq08S57ccqrXCVBbGKjdyx+T53nDRJnt4=;
 b=BQTKwoOo7/0gBax/BSzAA+jXs7m0Wz798ct87O4gej/8/7THa0Rnz5fUKMxppi9JZEEMHuQwlKZGIdBpzQ5VBC3sHlfuIFlhqdZmiROBsWH/74GOqAoo5v24ciG3EBUwmZQpINnwV4Sidh8tuS2Y9dG3+afUQwd0Kn3/spnIaOXe2P9YdUPcysR3HODSTcyq9mOnymHPTjBkVvm8EHXCdOdzpvFLnh3Iet8qYLRh76tptNEHtLVBTjjmN2HTqL4KRrDnLXVy8OoFNrJYqpgoxe0TU0hhjQW7WWFMG/FCUzFkDKlyfTR3fXLpB0x+/AmXIvZq1sPandmT2e0KMhJfIQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nvidia.com; dmarc=pass action=none header.from=nvidia.com;
 dkim=pass header.d=nvidia.com; arc=none
Received: from BYAPR12MB2743.namprd12.prod.outlook.com (2603:10b6:a03:61::28)
 by DS0PR12MB6559.namprd12.prod.outlook.com (2603:10b6:8:d1::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7472.43; Thu, 18 Apr 2024 19:55:13 +0000
Received: from BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535]) by BYAPR12MB2743.namprd12.prod.outlook.com
 ([fe80::3ec0:1215:f4ed:9535%4]) with mapi id 15.20.7452.049; Thu, 18 Apr 2024
 19:55:13 +0000
References: <20240418052500.50678-1-mateusz.polchlopek@intel.com>
 <20240418052500.50678-9-mateusz.polchlopek@intel.com>
User-agent: mu4e 1.10.8; emacs 28.2
From: Rahul Rameshbabu <rrameshbabu@nvidia.com>
To: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
Date: Thu, 18 Apr 2024 12:51:19 -0700
In-reply-to: <20240418052500.50678-9-mateusz.polchlopek@intel.com>
Message-ID: <87jzkue99b.fsf@nvidia.com>
Content-Type: text/plain
X-ClientProxiedBy: BYAPR11CA0078.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::19) To BYAPR12MB2743.namprd12.prod.outlook.com
 (2603:10b6:a03:61::28)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BYAPR12MB2743:EE_|DS0PR12MB6559:EE_
X-MS-Office365-Filtering-Correlation-Id: 3756cde8-a933-4b09-4031-08dc5fe17629
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: QoU4FPZJbg7xW1LcA08ql0LIx79tWvPDGR+el48jlKXH5462unqAjBw1jg8wQcAGMKABWw5mp0z6RoebXuvk3YKf6ZoarwSRDeUjOvvWP75OhNg7EjFkKablh6+SQrCvsEtjZnAFrxM+a52c1JNNdzZsXzMUX+1gldJcidxcjAp1L3rAqOPIl9YhtFoz3XLm3tPgSjKLfkJoPfI1J2+88gqJiELX5ZVJUM/iMyyt+Rbf2nvzf+fTmsa4r6H4qxzod7tRF1CX/Aqa8Lrc+QkD4Z5m3UTABIoJJWobEjT/qLdS7ILcJgjqw6nlKIpa1zeZCJMXq8GOX2Vx3m1/G8iwUkFqrfB9G/Q0IUaOESWCYWO+rpxOMiHPoLHwXsSQ9DIZOJuSWM31M4hPZGO8i8YJ7d1RokFnGIQ2LiCMii1ZHyzM3QjQvYOnpcDB0Nt1vnqfsLn/8lW7bdAm3Qp7pBI+6zRCgAGV24HVR8VZYxZc9pkNUdD+CiNrtgRCI+nOl3vOdhOetP+efLIB+jm2h4ACdq/HfAhFsubVsoBBFH7CxxeEQ8K5yBMYjFVIoBppgc+i9+llV1FbKoK4wrC1NqaPC60IdRmU/yqzjZTZeYLjatRFU7rMyoxV7YYvzrsezpysauQ2oBAzdmhb7oZ9SBFZyfh/8mM+yYgyGh8tjqlvDFw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR12MB2743.namprd12.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?qM0BfTU35v0NTpvtrPgKtuZbY3hcHJub8/WEYG01+R9QhydxCWui9dEc+Ced?=
 =?us-ascii?Q?DTHrmkudtKq99svSzoGqXrEydnazn13naq10ysP+Fl9goYYp2KdqWhoImUNR?=
 =?us-ascii?Q?nVQRrJ5POK6Rt9EqGVmSprjrTuzl0SlEWOQH6DcVaRuxMCxh7FPzYcQMSQTx?=
 =?us-ascii?Q?NPnHAJK66x44/pcDq2tB0uFaY+I/rLfVXASN6sK5qyoD17yJFkE1TdHVOL71?=
 =?us-ascii?Q?hxK3hInHqc4J+RruBJi9OrT0e/tzUQEGS45HniAPI7KXtmqXl6CfuXoW5r9J?=
 =?us-ascii?Q?I6iSuNF4eV3psP5WBv5rbuqiXaLhMrh9q5/f2UryKuO8DUg5TUUGSqS9avjQ?=
 =?us-ascii?Q?rD085oaEx8Vc+UimrflkYRc15nZ7AZykVgTO5YvdfZmUFt6mubJb7YIa4haH?=
 =?us-ascii?Q?Itmr4MVOGx1mcogCKJ6TieVh+bm0USt0HGTmPqBR36SFbq6SbRtL3RcQ6odj?=
 =?us-ascii?Q?OKh7p7qKGVZ4/hvQoUK3OlQbcpjDJoXgMD8QQ/+o+y4xJoTc55n5vv4rw88B?=
 =?us-ascii?Q?EuFk7s0XnadI4YR1OS5GAlpYFuXey43RMvrciDgq/CL1QsD5ZwzflgSGMymv?=
 =?us-ascii?Q?go2NeQHXGikZu4UCyuqOzefrErSntt36+KxjibASYRYgO2NL8e44AK13KVof?=
 =?us-ascii?Q?u7J8Y9eMXiLhlaszgeiM1zghwVziqeiEnTSp3DSO7RU9EvypupSltywGRnHA?=
 =?us-ascii?Q?gZYmV5yZns/EyMMgA/wLUL06gqCqplR9MFwdgP5zPUEA8ZcxsrHqjvmCHVpF?=
 =?us-ascii?Q?AG8hcurojB767pqohaZwZkxiZrmjlbQ8buCCRU0CGhGoH7k41XDQoCoYH2Tj?=
 =?us-ascii?Q?Y8m15raqWnYQDmyzgZnEtU9R7my3jp/eAzt7JQh4+dzbuP8ah0Cb+Pm52sGc?=
 =?us-ascii?Q?ZbNEv1Qu2WZXRECfTzLxGo8aVIKkjwcNfF+5y3DVDKCfW65ma461ynoA7EeW?=
 =?us-ascii?Q?qalUmPjzydbSlZ5bdM2qCJfqqbaLbnve0lOkE1PBDJocOLY51tqePSfkg99o?=
 =?us-ascii?Q?FqGxaK3yEnZNH/1ErUhxnXsHyn8LZKTHAszjFjSyJMc3BwkaWPv2cnfw/PM2?=
 =?us-ascii?Q?geI//+A4aUAYECZ0F4YYO5EirdkZg+WCAjNhO7wZv80svkbDu3L2obEJ0ONh?=
 =?us-ascii?Q?DOBD2rBRA3U4rcEKdgi4VaUEnDfUJaFV4uFA3rEQLS3tHmEMrxIZy5JfbNwY?=
 =?us-ascii?Q?1wQ9/aL/K50qw5dnrDpu2JLxlJyjfsL7Ymg0QpKMLN0Ceztk/ZlZJbwxfKbv?=
 =?us-ascii?Q?1qKAjhH6EH/aTqhewSB74lrJsjOOX4tsBl50Z1pVbfj/z01jmsP5/+ck2n3+?=
 =?us-ascii?Q?RmgCKMPPp8WPqyXdVC/cVkhJ2op+pbUkVDVw6W4DqECOhwU1n00a0c1nsbk1?=
 =?us-ascii?Q?UkCmbPXUTRos0Vq6EhdIxxn9cwB0kYAqkVr2EqFnmcsppYtHweLyUFdDOl0B?=
 =?us-ascii?Q?THeB0uTvBQj5PyA4xJhcA9anZt6/JRvvY/qrG5g7+E0hs8NSwuXvPxKlrupK?=
 =?us-ascii?Q?wsWWe2TTqSKL+MWtLn5fP1tANCyxmS1EaANGBeyktzLwhF24UNoEHR4PpVx9?=
 =?us-ascii?Q?sTKgzVPlsfZfq4EgFTSCZTHB19RJtkotMj+a+uqxAWA3e7ZC8+pcQNSpcDlT?=
 =?us-ascii?Q?Zw=3D=3D?=
X-OriginatorOrg: Nvidia.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3756cde8-a933-4b09-4031-08dc5fe17629
X-MS-Exchange-CrossTenant-AuthSource: BYAPR12MB2743.namprd12.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Apr 2024 19:55:13.5697 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 43083d15-7273-40c1-b7db-39efd9ccc17a
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bux08PDQ3zM5NOB5EDIHK3E6yBfaccg6/2l6ih7Cw2Ix8XSSVxbzsnJ2leVOKuwrtowxyAiOjD5c0LQ60OxXnw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR12MB6559
X-Mailman-Approved-At: Thu, 18 Apr 2024 20:08:19 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=Nvidia.com; s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NuM9KyT7EKwq08S57ccqrXCVBbGKjdyx+T53nDRJnt4=;
 b=uFrFoz9ize41+qGS5/YCsO9Jy3bbjEAJBWaAFAA1Cgin1Spd07x5mxLPYM3RfAtmVIbcBOAUOsaJLxt3WnI2n9ZFUeY+dXb/d68MxzMNrniWzw5QC1CFwR5DcRRWTV3ZdMLJEVoKLf2a3etuBRCJeLfRi72DonIPx5bSKCcHHxruhIRyyMqAXKgMpqnjZwzQyhzqXwQaUBeH4gbGYTKkNTXeNx+B1OF3M8hLmIRrjVscLuwYpJeCvonXQtmiG6wgcd88JFAklYKsMJOiy3Sq0atbUJh49k0xVNQHPm7hPYwGc3GtBIyDMOEIafY7T3r91wavWohkU70Jyj6kobFG/w==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=reject dis=none)
 header.from=nvidia.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=Nvidia.com header.i=@Nvidia.com header.a=rsa-sha256
 header.s=selector2 header.b=uFrFoz9i
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nvidia.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v5 08/12] iavf: periodically
 cache PHC time
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
Cc: Wojciech Drewek <wojciech.drewek@intel.com>, netdev@vger.kernel.org,
 anthony.l.nguyen@intel.com, horms@kernel.org,
 Jacob Keller <jacob.e.keller@intel.com>, intel-wired-lan@lists.osuosl.org
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, 18 Apr, 2024 01:24:56 -0400 Mateusz Polchlopek <mateusz.polchlopek@intel.com> wrote:
> From: Jacob Keller <jacob.e.keller@intel.com>
>
> The Rx timestamps reported by hardware may only have 32 bits of storage
> for nanosecond time. These timestamps cannot be directly reported to the
> Linux stack, as it expects 64bits of time.
>
> To handle this, the timestamps must be extended using an algorithm that
> calculates the corrected 64bit timestamp by comparison between the PHC
> time and the timestamp. This algorithm requires the PHC time to be
> captured within ~2 seconds of when the timestamp was captured.
>
> Instead of trying to read the PHC time in the Rx hotpath, the algorithm
> relies on a cached value that is periodically updated.
>
> Keep this cached time up to date by using the PTP .do_aux_work kthread
> function.

Seems reasonable.

>
> The iavf_ptp_do_aux_work will reschedule itself about twice a second,
> and will check whether or not the cached PTP time needs to be updated.
> If so, it issues a VIRTCHNL_OP_1588_PTP_GET_TIME to request the time
> from the PF. The jitter and latency involved with this command aren't
> important, because the cached time just needs to be kept up to date
> within about ~2 seconds.
>
> Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> Co-developed-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> Signed-off-by: Mateusz Polchlopek <mateusz.polchlopek@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_ptp.c | 52 ++++++++++++++++++++++
>  drivers/net/ethernet/intel/iavf/iavf_ptp.h |  1 +
>  2 files changed, 53 insertions(+)
>
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_ptp.c b/drivers/net/ethernet/intel/iavf/iavf_ptp.c
<snip>
> +/**
> + * iavf_ptp_do_aux_work - Perform periodic work required for PTP support
> + * @ptp: PTP clock info structure
> + *
> + * Handler to take care of periodic work required for PTP operation. This
> + * includes the following tasks:
> + *
> + *   1) updating cached_phc_time
> + *
> + *      cached_phc_time is used by the Tx and Rx timestamp flows in order to
> + *      perform timestamp extension, by carefully comparing the timestamp
> + *      32bit nanosecond timestamps and determining the corrected 64bit
> + *      timestamp value to report to userspace. This algorithm only works if
> + *      the cached_phc_time is within ~1 second of the Tx or Rx timestamp
> + *      event. This task periodically reads the PHC time and stores it, to
> + *      ensure that timestamp extension operates correctly.
> + *
> + * Returns: time in jiffies until the periodic task should be re-scheduled.
> + */
> +long iavf_ptp_do_aux_work(struct ptp_clock_info *ptp)
> +{
> +	struct iavf_adapter *adapter = clock_to_adapter(ptp);
> +
> +	iavf_ptp_cache_phc_time(adapter);
> +
> +	/* Check work about twice a second */
> +	return msecs_to_jiffies(500);

HZ / 2 might be more intuitive?

> +}
> +
<snip>
