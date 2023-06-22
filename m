Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8973F739782
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Jun 2023 08:37:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0BBDB41F5B;
	Thu, 22 Jun 2023 06:37:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0BBDB41F5B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1687415851;
	bh=3UyBr3C343Cu0xKB+GcVATJoOyrHU/xoa6PwQVh4pKY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=oztgmNgMmOG//rqlfNNAPOz4yuGKvSM6JkO64MZEM/4jMOKJuhkKqdC0sLkjtYj9p
	 c6+WI2ltwjM3QEg27jHvoCEHoq3SPtQezNpfCYTP4DPwkETBs5JUZNQhe8pRBrmjXa
	 A9I9pl5LDLeRyZQr3bmfAGnHltvdju+TJIqlHlc7GUGZz0lzCc0YlTN3y4i4jdTAUh
	 zzm0+ZmJ6hWdW6LznRSUXMylMqqVwq6D1XHdsTt2uguicGynZypGKN7BFqIO94X42k
	 SLBzri6moxYE602a2p85x5R16YmQPIp5CA5sSYFXPer5g3tXNraA27fuPvXo8I1teL
	 cQYU1kiaRcmRw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id dzq1iclCpX6G; Thu, 22 Jun 2023 06:37:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 989AD41E92;
	Thu, 22 Jun 2023 06:37:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 989AD41E92
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 780F11BF5A4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 06:37:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4CC4A41F2F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 06:37:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4CC4A41F2F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yqr6iQ6sVBdp for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Jun 2023 06:37:21 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5E10F41E92
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2106.outbound.protection.outlook.com [40.107.244.106])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 5E10F41E92
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Jun 2023 06:37:21 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jveP72q5/A3M/istdQT7utEo9XAmxw0AERfMwcPUIds6LWIo6o6BTxU0M1krCvxLGKBthQYO4Ilr2OOUw23pMOmf4Dx99ldtg4S85N+HdPszgMXI8e0GJjnugznBt6LQ32UsLJiRDakoHkWMzvUjYjaomiyOvITKwChWLY7D8iMj9p2Ubof6TS5SFDQDj2dJbfl2xCB+eZcNoKCex1zLrp6tPt6LQRwYmcHZVs4O3VppO/eGlrFI9NTP+9Xd3gWk1Wwj30GumfXg+Xjnon0aEBYn5J5B8C6tkL4uS4zTo+pjure7DDg11QGoT2EcbENxgKEt4NTI/gcuakGimvoNEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=73EQ7jM7t/pazJJ+HdworyKc38eum6VZhL0KSrHWiF0=;
 b=SE+q+6+qKfB6b5UG8qpVASTMTcvjjUY6AfkxdHDBKcJPusU2Xn0XYE4r+LrfWkMn6T7r457irjGkr5CVLVjsxKBIkbyJl4uClfifrPnjSJtDT7B1ahYc9Kp25WoJU0MgIBZLMdfNQ4WtDww0hHO2lM4GvFQu3Ow61W58ZJ+O0MRdSOXsbn240UWgX5VMvx0fyAxUNijvZGpI6Olm5YMUgZ3w02dSKUh4nTmF4X3zutO9OtE1tK/9XS1/d/Sak//YcTmdOXxC8rpEoE8V4bLeQBWN/SnvhCvEezuo2pR/Fh8P99sBtUbpHJebKjn5HTqjl02LVChV91+N5dljGJEGKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB3672.namprd13.prod.outlook.com (2603:10b6:610:9f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6521.23; Thu, 22 Jun
 2023 06:37:18 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6521.023; Thu, 22 Jun 2023
 06:37:17 +0000
Date: Thu, 22 Jun 2023 08:37:10 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Gardocki <piotrx.gardocki@intel.com>
Message-ID: <ZJPsFjXtuam5J6Rs@corigine.com>
References: <20230621132106.991342-1-piotrx.gardocki@intel.com>
Content-Disposition: inline
In-Reply-To: <20230621132106.991342-1-piotrx.gardocki@intel.com>
X-ClientProxiedBy: AS4P189CA0033.EURP189.PROD.OUTLOOK.COM
 (2603:10a6:20b:5dd::6) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB3672:EE_
X-MS-Office365-Filtering-Correlation-Id: 1ae46d03-d420-40a0-90df-08db72eb1f9f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Y6/oPjh7X0MpFRPtG2f+UtKBAaA9oIWyxZt3TzHpOoslcURwWwmtPGVCALGKdKNPWHQ/eNRy1P8UkjmIsD/KMAH6gACFsIFge18m2F+SUG06tZ5vEAmAEEkGCg01FhV6hDyAbijrV9wvD0sggGTTsTZMRQzIGbO1c1vXr2aYGDfVJVPdu1PYhdFrQStXFn/WPCEWsjnBuQRxIVYmioJeivd4rLXI49GzURigfu7KznbyNEeqIZaSw8Q68AtAeGrzl8a6OCMtz2HZ0yAtrPdnOb+9Nc5kb/V2FAtV+wGtte+TpRUEHcoOFatQ975981qypZdrDRBk7AUpmowI3rRVFUQl/liGkCPja+RDpEuyE8KPd0LhYfbZ1AHT0g3vZB2vLk8KZnSLRgr92UTNSSN6i0IJF2RENla1bWpQyamTjIpRr2ZZ5cwvEzXYSogLEKKqSIiOxnYvseC0T8HMmWjcwVMXR3Ake3NbEQN3C/Pp4nL8ih3bq1uqjvkazdhejZn0xWSnHyGU0g12hEYG54SRfK8QkrYMuavGk2GxJZ7STT476gRM4kxdEkt22B1BLKkmApCYaBYEAi8kw/pvoNHVbgDKy9PmdjyNi9HkayaLaBw=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(39830400003)(346002)(366004)(451199021)(66946007)(66556008)(66476007)(6916009)(4326008)(2616005)(186003)(38100700002)(6506007)(6512007)(83380400001)(86362001)(36756003)(478600001)(6486002)(6666004)(7416002)(8676002)(8936002)(41300700001)(5660300002)(2906002)(4744005)(44832011)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?yQRGYLDopyUsNOEFtJ4u5QgorZX2V3STbM4lWFp0UhjkGDyBdinC4ixu48qf?=
 =?us-ascii?Q?2NYp+EBFRLR69YzDYvk+6VTSNlgBr+KzNgY9kRIWcP+1T9oHJm9jQSRiUGQy?=
 =?us-ascii?Q?oVEBU53Y9xJiUFAeQg0vbLraq/T0K+3dk3WacBC4nbCAmASMwcxEnU1zINQH?=
 =?us-ascii?Q?anrjYdFZmxlBfZA4fgIqNmfBrv6JcKhx81m+fFngDeJI5yYoJ+/POYzDHegx?=
 =?us-ascii?Q?Fxn9ybFnr9aa6UdMsnhRzkqMMyPGpQPuJneopZB098xWErOjZB1S9B3I6f9h?=
 =?us-ascii?Q?MVLepKISMuUZaRe5cwNz5711ktElg9oQgfmVB3OMIWdadESdX2fT3TQL/uov?=
 =?us-ascii?Q?XkSed/jJdZkUvyRAECFESc9eHTcvOmQkE2Rnvmo2pLRSk+lXJdDXsK3XrMtz?=
 =?us-ascii?Q?BipmKH0lLHdNeprIQJa9Deakz5DWQd9Ii984w7BNyMasLP5bdAzu2fnnZSvS?=
 =?us-ascii?Q?zGinNl5uh3/n3v9poRdtiKggfTFFR10THIBO7IyIRermnu1cOqPfX/HSdf3J?=
 =?us-ascii?Q?cZ0mtGz9Zbj7DroQ9Uh5ZQBBPYfL9K2Ei/idZSMzdv/11ZiJwtt9jNvBrBcR?=
 =?us-ascii?Q?xitDZsT8fKnDdWD9immtQXdkL+092CIMEWk8ZfVdaldnR32OULZMBcRw7D9v?=
 =?us-ascii?Q?EMBISWdMl9ZHuER4BBDduuo+wGAv8EbU6mVdxNy5MRrw4CSyOgWRJEYvNnNX?=
 =?us-ascii?Q?R8fnndydgOqdoGSKm0BRv/tfVPjLpA+uDcd5aC7LoIB9zJqcvJviX75+kBpn?=
 =?us-ascii?Q?4hu5TB3gmd5Csaq0taPsaAI7tO7qxtd4qFRhWrt1T3LuvLVO4vkIme1HzLm8?=
 =?us-ascii?Q?QBBcyr87O4ZVznF8RRy9JyK8ytwVuTTlw4asSw3k08tYlRol8HLGHBxi7Awy?=
 =?us-ascii?Q?3S9Vg4E//Ok0yc3nLUTLi7Tx3+ljGcfiZRTth7CNyvJmuah4ZDnKhMUnnIRx?=
 =?us-ascii?Q?TvTPRKEgcmlwpZDCVxEUcopjI3knP1N5ghjGEVJ3nZJShfyYfWtZy/wtIyWG?=
 =?us-ascii?Q?5OkwX2j2fntfXU0+wWQvJAOdPLLN5F/qYBJEDRzDM5jOTyaTpp4gWJRU+Lub?=
 =?us-ascii?Q?WW9VF+EAhS466Drme1l/M2LDY7jAPAMITeZT5d4HGyZkae87zFp50oho3wmM?=
 =?us-ascii?Q?vf1sIR6TB2HJQRHZ/m1s0nr7QdFFRgXDSpMXBRyQS1s/rzIESW6GtDIC4HWF?=
 =?us-ascii?Q?uFlFutxQzWLPuszOrS/L4WkBdvrqBv6ai5Im//IZdQZOnAbgS5x4jkp+ifU7?=
 =?us-ascii?Q?PB4gI3Oxfb8My9ZNC/65DDt7IGm6D8CuEZ3qfSMapWyO7Rh1uszdwoOQ1zej?=
 =?us-ascii?Q?wr5kzk5TRhTDxJ/OtJ89yHzZ4HJtmG/mI9hLnpKYhbtPED4FOyHhVJw5vzTv?=
 =?us-ascii?Q?ldB3zA+KJOg3dbYl3We5nwV/ftOpOHv7rKCUYElXpccQa29xOOYJgCrcq5Z7?=
 =?us-ascii?Q?rlytJGp5clRpGi1LYGlf/pKvIfGunjxThJzN2N2S8y+gNMnDxb37H40iwoKt?=
 =?us-ascii?Q?Q+93ltLBmlhHiwUKuFyPKXGK3yqxAw8oi8FHVR3IXWZDlvEouz5R0G9hakBP?=
 =?us-ascii?Q?gPqinn+L0MtW31reP0BRb1C7rpqBMl6u00xywyLZtiS+74TTj3RM9j4S3WSG?=
 =?us-ascii?Q?7i93Y0asg3BsogJpaFYalGlrvSRxFOsCW7c0qFOIXRu36vwsuwuVXHS1i+Kt?=
 =?us-ascii?Q?l4zQTQ=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ae46d03-d420-40a0-90df-08db72eb1f9f
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Jun 2023 06:37:17.8929 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7Tt+jme7bNf4Ve7pk4RT3xhU5RLKm1P7qwY1Tp9SxtiEleyZdIhQyteWM6jgRRxz2TnuXvkj2Y4hYFWo79gi16a03i/npX5WT6kAnnXG6kA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB3672
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=73EQ7jM7t/pazJJ+HdworyKc38eum6VZhL0KSrHWiF0=;
 b=a2OJyPdDTXV+WEuIKkilRwGKKgpezg4W206ZQMO65kD89rXe8/kzLykTNTSuuyQGKu0LTB3nFtHIf81OFel5dBlRXuefReZKCOuiKOM5IrI88GaVH51pfT2TEuLL5wx2aDX5sQO7tf7BQvaaczYxaCrWI3SVncLa/wzT3DuFJZY=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=a2OJyPdD
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] net: fix net device address
 assign type
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, gal@nvidia.com,
 anthony.l.nguyen@intel.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 21, 2023 at 03:21:06PM +0200, Piotr Gardocki wrote:
> Commit ad72c4a06acc introduced optimization to return from function
> quickly if the MAC address is not changing at all. It was reported
> that such change causes dev->addr_assign_type to not change
> to NET_ADDR_SET from _PERM or _RANDOM.
> Restore the old behavior and skip only call to ndo_set_mac_address.
> 
> Fixes: ad72c4a06acc ("net: add check for current MAC address in dev_set_mac_address")
> Reported-by: Gal Pressman <gal@nvidia.com>
> Signed-off-by: Piotr Gardocki <piotrx.gardocki@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
