Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FE8476B95D
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 18:06:19 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A886D610B1;
	Tue,  1 Aug 2023 16:06:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A886D610B1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690905977;
	bh=yqEk+oZjzvZh4Ts0VumhRrsFIfgnOBHzFMyEXdr8Zqw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=0MQN0fmogtKPwtXvyv5pi8MwthqvXIG4n47G9LzcHHXdl/BXfnIbvTJqiST8bD7nK
	 XiujB+ZXjkKbCGUdOQ+qIN5ZZZu0RVnzL3tSumng9iSv1aycVkfDiJnwEGRy+cf/tx
	 g1Xh/MCkmKwHpYfMcIHw3jDAH1Xv5vtwGoBWBIh81+SXIiP73cZw92p0tutmr0SWU8
	 UAJYhE9nVFKA9NmXJcPwh58NrdzC1B/c+Btctf1GZnCyxcBnRB6puqc5jQhF4lilJ2
	 a5NjO948sVyOPFphyklWUW1YtA6VthV8weN60zmOrggpAT/MNcvyOjWs3hTmHRpJ0n
	 0sifreBhsNg/w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KjucuMcqKa1i; Tue,  1 Aug 2023 16:06:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 45E1760655;
	Tue,  1 Aug 2023 16:06:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 45E1760655
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1DD281BF301
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 16:06:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F0D9860E70
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 16:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F0D9860E70
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gCHFtL3pj8Z0 for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 16:06:09 +0000 (UTC)
Received: from EUR02-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur02on2072.outbound.protection.outlook.com [40.107.249.72])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3748760DED
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 16:06:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3748760DED
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=D4ibUWoevjz+9/RPs+bzhPw6kGmoYsWIjFOCjgQ+/8kwi4qQH7Yn0ZJ8VfSldPmhHufwU+LwaoDfLwURQOkrAjexCzZZcyYdBxUrLwDK94fVCNhGSZAOr0P+ZtqWAfho9Gr/wQ80JDrTNO+fh/sGEw4+YhXRhPDRrxaU2kSlbJrzjrIqeVU64XWMI3G9ekyHNqj8jFnEZbu677+NrjMnzWSk+n1fmAynF8xUSExlsfZ8ukOPh59N/R/QywhDPplscg97ZgoqkLU70JFfmqbaRUmyAuIC64NLQ1ZAMKrywYFb8WhOOYtPVRzoBaFZvjOyKi80WvcLPuDwEB0b6M7M1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LmEyjhaL8WdQggIvGsDlx/Bs9VBS5+uXEwMeM6RQl48=;
 b=jUrL5YZJu2BtzH1+n1ZkeVfcBiDv21CIWDbwPFZW4H7CRsx6l/YvghZw59O0P4B89SWN2Ohk6nRZ+M/HhqQEe8Aq8+1++qGmRVr05Xr1c9hR9DKOaCasQMQ26801F9hbKbs2ow28qHhPdiz9AgkLJyW0Oms2XuJ+GRcceAYOwWPf8SwXXDP+Ss4ipLJUbMGOU9AnJ1fIa41y7+s+3j3SQaLqPzRxR84bq4ezel+KUMNBR/ejAENHO0ul+fSMdRAPM/q6zDwBrjGMJJz2WdYhE4WUUTR0NCYEsNThnXt9+Yth/tblTqhPn/Oub6yIonNl+l5wH/M/RCWhF1feQCX1uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AS8PR04MB7605.eurprd04.prod.outlook.com (2603:10a6:20b:292::6)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.43; Tue, 1 Aug
 2023 16:06:06 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.043; Tue, 1 Aug 2023
 16:06:06 +0000
Date: Tue, 1 Aug 2023 19:06:02 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Pedro Tammela <pctammela@mojatatu.com>
Message-ID: <20230801160602.t3wmgc2iisjj3xls@skbuf>
References: <20230613215440.2465708-1-vladimir.oltean@nxp.com>
 <3b83fcf6-a5e8-26fb-8c8a-ec34ec4c3342@mojatatu.com>
Content-Disposition: inline
In-Reply-To: <3b83fcf6-a5e8-26fb-8c8a-ec34ec4c3342@mojatatu.com>
X-ClientProxiedBy: AM0PR02CA0034.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::47) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AS8PR04MB7605:EE_
X-MS-Office365-Filtering-Correlation-Id: 56e603bd-7caf-4918-c007-08db92a93673
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: MhM/bD1l93SbdalIoRTSzDVE2TkhBkeitjuZYCvZLqUO2Uum4BKdKwkWEMqUO7MwBz9n7YfbAvmZA5y8xuq79DMg/7y37gNCB8K4IAYziExz8NP44nXJoRx5Y9UxNza+AE9Vh1MkTnMCPKyV0A/TeM3V6+i7qEg2q2lzeZqvbffIpozsZUrZNxoJobOkv/3K+/jGqGCGMwuHohr63GbXqVsc9SCaMmDw49UsbtVtEtuDlWTQXr6LzvoGSi7Lmu1WszJ8Tf336TQ3EJW6z9sA39t5vCwQh9TO5kNKJWM/qBIpU8inTVGDCZPmkxqqnOZDfSIheo5MPvUiZmWZQ1o7LEzHjfIjSu8yxll+r6O6xr0jWK9Gne/0njP2pD2nu2OiSj8nMiFSPG4LH2YVjnsX3gewnNrRjU+Rpmn5Nvq2QHW2PxaZGnv74TnDRXUL/+0asqj1C6tiVF30gtjLgPCO0vDD0tyf8XlVzkGdtkMV9HvMSKFdBhq/jhmggQGD1johcfvzCue9y5St5FSOYoYMqpU06r524bHkExMrwzqVW1mFMyJsA388OhY8HTeuVPZ7
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(39860400002)(366004)(376002)(346002)(396003)(136003)(451199021)(44832011)(9686003)(6512007)(6486002)(53546011)(26005)(1076003)(6506007)(186003)(66946007)(66556008)(7416002)(54906003)(33716001)(41300700001)(86362001)(38100700002)(66476007)(6916009)(4326008)(5660300002)(8676002)(8936002)(316002)(2906002)(6666004)(478600001)(4744005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?9MKNEfI2z1LgHhjxzZ9L39w3pHZXa4Kwv086qFHIUsT1oYFghBUM0zOavwrP?=
 =?us-ascii?Q?zzhv8nAX23jUhP2mySXiNpGUBPOXHu7Fxm1en4oGeA/IXYlp3JVfuIlN4BN2?=
 =?us-ascii?Q?9VLsebpwG3JDkoDuBSfanbjCFhZo1jLcZq3kA9cT3WfFI0jz9yYtgbSqxzzv?=
 =?us-ascii?Q?nu9izqFNbq86a9hwWEvtmk7UVCs5s1CNp8wUU6tU+ZVbiD23QKklHJzqN6m+?=
 =?us-ascii?Q?kPBeZRW8rJecSr9Y0dv5CuunzIqT5sHBe8BYuTzndOTQ9ekGyBCTAZGW+aGU?=
 =?us-ascii?Q?qDiHH0+nvIFvXk4Yp3BDwRY39QHB5AL9jkS94fbcO0RsEez0DoMryTM2PWSd?=
 =?us-ascii?Q?237QUt4L5ZpB0kmfqWGjLDU/tTuBbd+r9sAP2pqf5viEpmSzCghazeEbK8Vq?=
 =?us-ascii?Q?lSawUN25ZkVDn0AYJjqsFwvojqZMIbAvgTpXsMZZmQ6il341Vrk2VGbQpqYz?=
 =?us-ascii?Q?VvcAkiNgZTjZ4O1jlBFh3pTExcdZ5u65Pf5pF6d6oMeRv6sF1ZnBegdC0iqI?=
 =?us-ascii?Q?uYxTqGRnQTPudv7qE8V1Z6Saen5JNLfBjxm1YUyXd+Jwrg01/zPHeEiHT2Xc?=
 =?us-ascii?Q?sPK1L1N8yZOzQ0M9khzHD5a8zSKEIJJVIfH5L/rx7IaZ2V5O8HsbGtBv6wL2?=
 =?us-ascii?Q?3oAVlruE6K6XiueCQFNT/tsHy0do4mb+OBNR5nXhN1ANWEeUJHsVVfRRwK95?=
 =?us-ascii?Q?9Qp8Ir8BbshZh5PavbQQdARvRKF56TiaaN2+ujkfxINO6pp2efskuLlWWm+4?=
 =?us-ascii?Q?yDvkCExjEMDXmb1Yp88EORzxLy9kAH2i2RK4S9Qb+KLJiY8s30w2sRh/bQdF?=
 =?us-ascii?Q?yClhxEVsa+XZi2tAiup+PD691C582rGMkC9d3qjL9EDvkRV7QxqwKSdqEUSn?=
 =?us-ascii?Q?cnByCZCbY6wxzLv6n0im4YdjlI6V5jOfFxpGRubZf+lmsHDY6fd/UCAbqLVw?=
 =?us-ascii?Q?euGDYmF2PK9w8ETAQ0gvDoANRes021d+FHDGL/8rwGX7XG2XoooW+Yz0kd3w?=
 =?us-ascii?Q?mdl5Ez188P1J/0FC/J/vKm7XVvIBXlLpYk6Qf02J27vZbzVW+BALzcWm+zMs?=
 =?us-ascii?Q?OINHW65FSjd1rAVY+/jmAPpm6xB2xkl+e/R0pjjYREyWYxxQr8Nb4qVdmjo+?=
 =?us-ascii?Q?laDLrshT2AajHtr+JBuMUpm4Zxk7q+XEDShWH84hsJXTlskG/7POxdZKQp2U?=
 =?us-ascii?Q?BWfKhLT4HACu9vxfnTioTLOlcpvAdE5+KuczVH1pLR14O2GA4rwIq6vKdTVw?=
 =?us-ascii?Q?cJJBuhjia2brvluhgiZ+Umz7vld8HyXRinEj5NY32WC6IDvfzfBPSXdc/mbS?=
 =?us-ascii?Q?nD+lgzKhZ35gi46UAd4syQesSF8ztJHodg5t5AuDiKxSXUk3kXJ+D4+IHVH1?=
 =?us-ascii?Q?vhHGxPGDU8+3Q3V9xIHOy7Y4a7zXARLnPWzOvztrSF+J6A2IegxR5KSICfbP?=
 =?us-ascii?Q?fOpLIW2HUn8enJ8rh+VcBtm3d0SvP9vlf1Ri6gjFebnTOVjsWDhEIHL9FMDq?=
 =?us-ascii?Q?MIQfr7s9lExCSVix07rIkHquNClMYrU5+ddWjsgb2PZDh2/u71EmGOOoyT/i?=
 =?us-ascii?Q?P9YuTCksh7j5s/7K1XH0I78R4qwFIIR8LXWjfpo7rbV4iVQWJU6rhPGIFP66?=
 =?us-ascii?Q?qg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 56e603bd-7caf-4918-c007-08db92a93673
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 16:06:06.6463 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fOsE7d+Bo9tT8KI1LW+dzUPx9t411OeSR7fj1NtnP8HEbB+d0zUaF2+aRMRYFV4+VWy0hjZyZcL3kteGmgaOrg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8PR04MB7605
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LmEyjhaL8WdQggIvGsDlx/Bs9VBS5+uXEwMeM6RQl48=;
 b=SgBOxq6almSBxvhK4Am3uW4LJbv9M8RlMvIkIDMD/Bp/gOh57zYuhhFCJMgKoohmpzwCb3ym2kV821/+5UkqtEvH7AP2shwoAdlOvWAcbfO5B/i497yGR9J1dI2P+S0nTg1R+/lPbr24boHItE+Nz23+FK0BASknb3mAKLgyg2I=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=SgBOxq6a
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v2 net-next 0/9] Improve the taprio
 qdisc's relationship with its children
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
Cc: Jiri Pirko <jiri@resnulli.us>, Maxim Georgiev <glipus@gmail.com>,
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Cong Wang <xiyou.wangcong@gmail.com>, Peilin Ye <yepeilin.cs@gmail.com>,
 Jakub Kicinski <kuba@kernel.org>, Zhengchao Shao <shaozhengchao@huawei.com>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 14, 2023 at 01:47:25PM -0300, Pedro Tammela wrote:
> On 13/06/2023 18:54, Vladimir Oltean wrote:
> > [...]
> 
> Hi Vladimir,
> Thanks for adding the tdc tests.
> This series seem to have broken test 8471 in taprio but I don't see it fixed
> here.
> Do you plan to fix it in another patch?
>

Thanks for pointing it out. I'll be unbreaking it in the next version,
as part of the patch that changes the "tc class show" output.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
