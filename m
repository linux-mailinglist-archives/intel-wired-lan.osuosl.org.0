Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EAF704A55
	for <lists+intel-wired-lan@lfdr.de>; Tue, 16 May 2023 12:19:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8857140260;
	Tue, 16 May 2023 10:19:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8857140260
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684232397;
	bh=L7ukq6erYLxvmv4DPftu3Js+dcL2HEHBrMFrIegYqTg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=b/5AQkI3EqY5EYFa6KPf4Px8MUtBTTa4iP2owb+9f/rQGLnRqbydDmhaE30taBTgF
	 SfQCMEUBlCyk0ShLRqJHi18MSMXlyTSeAhZDoaQU6o5Bm/PuwtE5AtuzFDVjZh08eE
	 XhR5XftyZ6Yg/ruboFf4Uu+suaCR5IuPE5O7MJq2xw2sDqaJQXtFcyR3ebwEwh1urz
	 1Yu653Z3NeOos0J5GdNXsMfbw51GMMsDVQukt0J74hMIHSmSANAymeGxR97zmtD/Jo
	 j4kmhBOVRW8sjj5hsp2pZVnWXZpiOIvZsFJOZdGOLpq4kQaWpEm41Moxjy1IPhoWFI
	 j71usySploqRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id i2MGpqPZux0G; Tue, 16 May 2023 10:19:56 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 51CC74018E;
	Tue, 16 May 2023 10:19:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 51CC74018E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8F42F1BF239
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 10:19:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 65C9B4018E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 10:19:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 65C9B4018E
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nBY3pjmccbg7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 16 May 2023 10:19:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 62101400D1
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
 (mail-sn1nam02on2116.outbound.protection.outlook.com [40.107.96.116])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 62101400D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 16 May 2023 10:19:49 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mjpY9ASaUEzMES+tSlQH9PpnfhPqoEdMu9yYrDtnZE+NwcBm1Bj3a89aIPsSyLEctKEIX+1PzQGaku5RAQM+WxxxHIQuTUEBUVI6iq4+HPPm/1NMd6z42W86MF0C/+p2iSIpppX5lH41oUUd6EzB6Tg4E2HGkYcTNur+QY+Zk+PhI2Si9qWhm6bFrNXDQNl5f39AmvnaSC6m4d9P8HzV1CfyHTDZVVi4c4Bql7oZKuzqoW0xyvYVKKogvOcyjbUnwgB78Oj9f7honlFlPbP8h5Wj8CxPwdtlDStDus639wQzJ6jU/0dmsMD0pOcteU/OXmQqmUac2fEPaIgvk5kGIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jqdZcNSSA5Q6mYX8ets8m45s1LQgkwLcI4uPd7/uBt0=;
 b=Z04jTvQUSTgZU6vXlpq4aYVjBYtPFUBVzk8YDGYaOPUxOBslfny97GhvsPYemGt/SPSG8q/KL5jIg5fwhTsh7GizI8JFr4gZt2fwXif/OFs6dBatPcwmX9fzcz97PsAvWHku2arZnLseXR0uYjRn1niE73CvvRfPe8vZS1lzym5Y9PNevBcDolJoxPfCqSxt+5pnksTbs7xJItb+RjkTDaBYkuZROlBQJ34jn9FggSUZg6pMS6v8UQFVcxrfQlRFGXkaZ1HhEjm6emQRoWal+vwiBU4V3ANEaYmyWGmUPsS8xlycfWBhr59NnRBdl+K5KOx9LjHikzDxdKWdND1/jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by DM6PR13MB4081.namprd13.prod.outlook.com (2603:10b6:5:2a1::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6387.32; Tue, 16 May
 2023 10:19:45 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::f416:544d:18b7:bb34%5]) with mapi id 15.20.6387.033; Tue, 16 May 2023
 10:19:45 +0000
Date: Tue, 16 May 2023 12:19:25 +0200
From: Simon Horman <simon.horman@corigine.com>
To: "Gustavo A. R. Silva" <gustavoars@kernel.org>
Message-ID: <ZGNYrUeFHC7wR/1A@corigine.com>
References: <ZGLR3H1OTgJfOdFP@work>
Content-Disposition: inline
In-Reply-To: <ZGLR3H1OTgJfOdFP@work>
X-ClientProxiedBy: AM0P190CA0002.EURP190.PROD.OUTLOOK.COM
 (2603:10a6:208:190::12) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|DM6PR13MB4081:EE_
X-MS-Office365-Filtering-Correlation-Id: d0509c69-c26e-4789-d29d-08db55f711c7
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7P/BRVAErn76lefJGiL/vNzcxI075p0M7SIHw/eFSu18t4mFl68q9ToK7mHHUloMnOCxQJxRqS3eD/kyILCDGPM6I6WFDNJA6fO/HLIBwdnSMkR1SngEmE6CdbxCS9UDb8cWrwP0qCI1mMLG7/waJ9VtnubIi2W2TBJZm8KQwMpL3eJ6yo832eQ36/C/OTaOSETRm51fk0KLgG27fLa6sYMsqT4NLczwIVCBjQwPZUo1iStwFFkcbeHRsYr3ElEVCLIb7WLYyR3V+a1ovODqyjnLjDIuOOHbVMvgyG++Gd7o1DCFfD2fGlhYz3fNr/6RDuK7Gk+5zi4cOyEyv+V3YsBoEEQvLCoXkgXhu1qqVHVO0OoY0WDRiYVbW6Fwpovs/ekfymIroBUtQuf5cUmK9QxREDOsNGdWPTZGOrhVBx0lUvAEYQvQl7fz4q5j2KIY8Mvpw5Poq6aabqcITuhs/k+yzDu31dL14Q2Skl1hHxZFbHht80S1OPsHstG6Nt6JV51ScMprVmVsjFMW3dBGLGybzmrl4qmD6OTQNtHxW4w=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(346002)(376002)(136003)(396003)(39840400004)(451199021)(38100700002)(478600001)(2616005)(83380400001)(6506007)(6512007)(6666004)(6486002)(186003)(36756003)(966005)(316002)(41300700001)(66476007)(66946007)(66556008)(4326008)(44832011)(6916009)(86362001)(8936002)(8676002)(4744005)(2906002)(7416002)(5660300002)(54906003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?ApVVqwYfM88l0MtGNcF1cM6SP/RTeV9DjRP86WyQnV8gtJakE8z9jy2cPj5l?=
 =?us-ascii?Q?qW+32j2ytjVA/zfrRgEVBUMfMoU0PEbYudSafjM01TZzQ9J/gIW3gO6aWGhe?=
 =?us-ascii?Q?uFXPBAk5Sqq2c/G7VFiRgwIMvKJcYvoGfm9b6Q5xsrJZjS6P6j7WcLHEcCdR?=
 =?us-ascii?Q?7WwdkUeuanNtR+INcRcoz7kA73DaXjkf+mClst0qlpjpF5se2z5HHsM4LQVt?=
 =?us-ascii?Q?Z0GebUKB9BoTEVcnyGkz5bWCtPxvw2t69ZTlLlvzhiXbK8s1HJi3o0xt4M/e?=
 =?us-ascii?Q?hmUR2noOItbDBM6QtY0HWa0Ds3287aM0RO5Xd8ef5vNkA8ZjWOMxOeYN415u?=
 =?us-ascii?Q?+LhqkoSP/do21gwDMW2MODcb165nYloe4lAAzGkMUBfJmQwX5Hriku76S2Fj?=
 =?us-ascii?Q?9Ct/njUrLqUrgnVCi/Smfo3c+ZmDUQY8UMEqR3H1jCUj6z1oEnOdb41Wzd2Z?=
 =?us-ascii?Q?p9uOttX+tVOfOjMo68yW99Ofl3yC0YksyCQtGB2QsqAcIx5eYNgP6szoYALz?=
 =?us-ascii?Q?bu6LZUrh8CpSa3gMItykzRsBqdvJJmR2MUGr2J+sl9XnSMMJMtUQUOxvugHp?=
 =?us-ascii?Q?02ic4232eZ+Lzpy+OeomG46GOM7MxYT6dUHVF9mNumYJuRToxjHv+kHlHFpb?=
 =?us-ascii?Q?yGyWHtoKxL8tA7/zFY/+UnA2VmoiOL6lOzRKrtamQAz16l63Wx8tfvLrIF8O?=
 =?us-ascii?Q?eEHGp2TLT/nZyVyhF6XCTr2mAYlFV4+IfD4jMSnwszQobsZryyZ6tU6k/k8P?=
 =?us-ascii?Q?ULsBiFcOCfbRzxwEaAwlmewsIzG1OTwHh+dXO8r/RQ55LA6aWk3JqCLS8l7G?=
 =?us-ascii?Q?9/3rqT0/pw5Lj4nMQzxXva2A+1zrApZ01+jnonBAB84fgS2bUVodcjme8t7w?=
 =?us-ascii?Q?8UxiQZP3XxLNMfsFI1NqkSJk8Zc7Po7EAaSG2Pl1t5iZ0U/uOfcMLMHiKdHB?=
 =?us-ascii?Q?2Wf1cEF+tLKtV0kywZbgSvTaosWRi5r5JCW+Li+TRR/HQNHwku48KRB/K4QS?=
 =?us-ascii?Q?UNrPU7zLgHcn8PH6VyZoZqS+OBjTH2f01nN3wZa0M1XQD1uxFRU2Ncxxdwmg?=
 =?us-ascii?Q?kKou9GEg3krDqGMF8Qbj6nrUPEfM8VFqZgjCX+wHoMluvZuzhN/PDu7xzMSz?=
 =?us-ascii?Q?lqDk+ppr2WhI6iUcTUNfwNIqeXAFtO+IIKuhhR++do7mlZyzsoRkuhgaoXf+?=
 =?us-ascii?Q?8cCVhwKRzty5SAIcJSeHO8S4Xt4BQypbr7VbetVplCBsniQIZTQyx2FFWZIc?=
 =?us-ascii?Q?stB2GKMV1yJpdyXVstZGRX1dYAcneJz6wy+cJPBZK2lSk3bxElleWuAP42ri?=
 =?us-ascii?Q?7yyYhgT3PB5wnWcG7vU3HQx7h5x1gyowrTtPWUtj58mMFkyXJ4GNns8ioVzW?=
 =?us-ascii?Q?qJIThQl/TjapoGIjoLIOcP0mLMPSRxF1iJRPDuHlziHb3IIq83Dm6RwZt3zR?=
 =?us-ascii?Q?RVAvaK9rBrWQYBi0HhmUrQUe74CkeFbUBxIj5ahaWxCBVioX3Hte1jpLJjEx?=
 =?us-ascii?Q?tCjNq5iSoqrT89rvwizeaGpOKukNWgNH0UCTwMEiTMUvkmMJpJS/BKVrbPgw?=
 =?us-ascii?Q?SY7GCHeN6xskgF7m4DKmN2p9mDWFYyFFdsN6SYUVSg1RKopNenm8Eq28cepy?=
 =?us-ascii?Q?teBvu02Rf09spU6jDayDX0k5VJkPdBPbCNVZfWCNYI5BgoKcKd2SrES90H0P?=
 =?us-ascii?Q?OT+8GA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d0509c69-c26e-4789-d29d-08db55f711c7
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 May 2023 10:19:44.9383 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: F6ekm636j7/j42tPzIcmGuE1kPL+0e3h4+ojpuIz0sUKRaocnjiTyH5z8cbly4lQdElMzYPl7tcE8V7scakbcQ2hDFkU4XMkyEq+1tLnHds=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR13MB4081
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jqdZcNSSA5Q6mYX8ets8m45s1LQgkwLcI4uPd7/uBt0=;
 b=BdJ//5fJ2gWkZ7sntiDcpXq2TarcF0PyLWXp2AmtxkYKHJ6vPm1SqjNs7/Y5hPw1Gix5upPnHJH0VJIWULLdomClrOxwXu3M444BIgcrtCHmmVk3HC6ZMUSIRrSeTa83LBIZUXsZDLl4KEyw6hEXQUsKZBuOGdQolVjq+w6qiXU=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=BdJ//5fJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH][next] iavf: Replace one-element array
 with flexible-array member
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
Cc: intel-wired-lan@lists.osuosl.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, Tony Nguyen <anthony.l.nguyen@intel.com>,
 linux-hardening@vger.kernel.org, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Mon, May 15, 2023 at 06:44:12PM -0600, Gustavo A. R. Silva wrote:
> One-element arrays are deprecated, and we are replacing them with flexible
> array members instead. So, replace one-element array with flexible-array
> member in struct iavf_qvlist_info, and refactor the rest of the code,
> accordingly.
> 
> This helps with the ongoing efforts to tighten the FORTIFY_SOURCE
> routines on memcpy() and help us make progress towards globally
> enabling -fstrict-flex-arrays=3 [1].
> 
> Link: https://github.com/KSPP/linux/issues/79
> Link: https://github.com/KSPP/linux/issues/289
> Link: https://gcc.gnu.org/pipermail/gcc-patches/2022-October/602902.html [1]
> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
