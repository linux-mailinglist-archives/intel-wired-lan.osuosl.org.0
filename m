Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E74276BC59
	for <lists+intel-wired-lan@lfdr.de>; Tue,  1 Aug 2023 20:25:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id D58FE60BF9;
	Tue,  1 Aug 2023 18:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D58FE60BF9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690914324;
	bh=LLTalbDLLGKIkRQrY1CrCwSOpEz2bFG+shWO5F2cyLU=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wfMaXa0QEy0GoEVRbtD/ACRuDyAilWZQN3RULtAOaNQzACjdYcQD2fpi/dLF4g8h8
	 QsE9Pr4+EBHpQHYcszbK7YYWBA3zCKLchDsiAIHU1BUYT0An2TkEPoaMKQ3MQ+aKt0
	 A5cq2LfkLqYL1oDmq0Jmu85cQjvtNt8XZOHFMX01U/M/ZuBxyxdaeR6LPIk1IguIsr
	 dzQTTIQaEuyecMCCn/5PrxeYzQcpgt5zAwDqgexXQ6TBHBu4H+uf5plQGnXdAFAoC2
	 GTC1knl8ekxCg84s54KICyjGRGDugcv4SWivQe9TtRYPkbm7o6gg65bgLt6EjM3/6B
	 jB1D0FNXMLG+A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UTOXiiOCNQZ7; Tue,  1 Aug 2023 18:25:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7E75460E3F;
	Tue,  1 Aug 2023 18:25:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7E75460E3F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 6FB9B1BF3C4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:25:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 47359405D9
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 47359405D9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pR-griXsEPWn for <intel-wired-lan@lists.osuosl.org>;
 Tue,  1 Aug 2023 18:24:54 +0000 (UTC)
Received: from EUR03-DBA-obe.outbound.protection.outlook.com
 (mail-dbaeur03on2088.outbound.protection.outlook.com [40.107.104.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0BEA4400C5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  1 Aug 2023 18:24:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0BEA4400C5
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ndRBzVgbS7MdTk/xQS96WfbdqJY7FcWlZprZspWa5uv4TFHtKa5iF/nEUnWnUr2q0ha6FH8JRhzE4Noul1fBihVVLV2PrOMdvkIPoC3h3NNkdkSNpquidFxQq2Jts+whLsnF3ebciqElrrvghAYXUdBVQbZ/WK3aWYPHehrWhmdjPwHMBp3o2MwxxYFEeHOmvJQdouKzwhd2MbUZ9K55fvdNiEh8LSCpgBLqV61psEWBbWH8x/rmIE3hdi0SjPbOFuoo/98wKjGuzgpKN1pPreolLB9wPhbYtNRKAt+VFaGdsCzi8u8cWPvIIvMDroPrMNWk12EFE5t5m815N1A1bA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ZeDFvsIdN/7QAcJlUBNojMuSKMlZ7MhoQMa+oJSHRgQ=;
 b=HjffND+Qum9htlEMP3pnxIwjjmPubP0IhE7lt5b46/XAerFgtdtBt8G35EXk94C1yKyYyaCF0380ifHXy8tNYO5PkHqUPzEtXO3XuzXDl+kNv9B8vnnazLpdwI/aae1/3Pt69Vv35YGj7pXXEWLL3SksMHA0v2N9bmwKIEyHO61uoevR6A1kWg2cIpCllf7SC+9wPUmcF+EzEEDit7h7RYppeEVcsZbEpalN63uRJO9+8BTnGf/ZqOuy34p5B7zQ8kqEktPLrrNJG8TgZVk1VGVWN7VqHoKdfGVHjUVRmKJ4LBVEGaPR1KewKm2aFdfHTchwv4OMdMmraoO5gxuRmg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM9PR04MB8796.eurprd04.prod.outlook.com (2603:10a6:20b:40b::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.29; Tue, 1 Aug
 2023 18:24:50 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.045; Tue, 1 Aug 2023
 18:24:50 +0000
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: netdev@vger.kernel.org
Date: Tue,  1 Aug 2023 21:24:16 +0300
Message-Id: <20230801182421.1997560-6-vladimir.oltean@nxp.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
X-ClientProxiedBy: AM0PR03CA0030.eurprd03.prod.outlook.com
 (2603:10a6:208:14::43) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM9PR04MB8796:EE_
X-MS-Office365-Filtering-Correlation-Id: b8b44127-5a31-47dd-0798-08db92bc97a3
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 2apVDXP6R5nNZz3GFO/Hglb9x71pSA8HSbTj2JohrM+1fO3yP6icvG/fMDBkzVkPwsukQvJz0JCUEGT2wBu3l8iP8mU0bsbVMp7m+BjQJM8v215czB/IVR+1a3EQSAXEi42WaE06KQoFNQRaS3DV24dbvzN5FWwsK2nc8PZzydIoolrexqZ+9i8us7Pbsr/T3whNbiezk3vsxT7kZay0tXpuawKRLIYUTzRDYY0qJTAjFK2vEWFowmWK2R+NIoH2dTOpO9SL6oS9O2Ivp5GBnMVk2GVNtbUasKJYMVKXCJmvGeWMBSwUQUlf/W2eZT9Ycr2kYpALBTZlP4d/KD0NNA7K8w6ynUYWzNGbLOWma9UoCeiKOCp4JjhvsfJyZxxcwnjMPLLq+hSS+IsNBBuQ5b7OeC5AMhVPpkmP3hfn2B3Kdt4HPXqaPzcG3AkP8UDNRsW/Bv86r6FnBU7bJPCK5AZdaq0o3/pW/hk/iReCTSDSE8JqDnsWkQC4aBTnqeod1QY2Bcc2UBJ9TwIsHhFwD4q2wNcRdliBgkt0vTBno9CRUICqRqgIiyqbdjLYNdqIZ/MyfjYKY9Xb0jCs8E431k+x4vdi68aGr0Xay33pMhA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(366004)(136003)(346002)(39860400002)(396003)(376002)(451199021)(38350700002)(2906002)(1076003)(6506007)(26005)(186003)(38100700002)(52116002)(316002)(83380400001)(2616005)(5660300002)(66946007)(44832011)(8676002)(36756003)(8936002)(6916009)(7416002)(54906003)(41300700001)(478600001)(6512007)(6666004)(6486002)(4326008)(66556008)(66476007)(86362001)(966005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?WenMWEn/tR3b8/nZWgudleHKai08EFUCsDA5+tV42HDTqDccpMcuSEPmVvHg?=
 =?us-ascii?Q?yEret8KvVsVkokZVN2/57aSk8yN5OvngkYZQ7VEK11mflQDgMjOy1pvXHe+Y?=
 =?us-ascii?Q?BRnZVm438gLPLFf/TEPwMxH9mm/h/my5CisvTA1deEcmNTkZP3/kgAEUeyk2?=
 =?us-ascii?Q?zWTZ4izWBuEwB+K7fnjyp6+xHghROD0a65ucheNtustzvxUZs1QWHWlC/ooG?=
 =?us-ascii?Q?1J41xay+VEosBxl/62ks+5t1+kHUPB7mL67NLdkxk/ew9wzu5a3Cvj0MFgAe?=
 =?us-ascii?Q?Wo3kHsFkMB7MwhymocGbi0WOPx09Z9BxxHPcCw/Bb6Lc9x0JixiQwZD3dFXy?=
 =?us-ascii?Q?FsPNf1myqyEq0P4BQ9JHLqjI3Q5r2BqmPvOEiTnsj8wuwhReKlqQRsByniLU?=
 =?us-ascii?Q?R9qIwK2gVpRKvuwZDY0u1NodUo50f6MwKi5DCm5kHdrltrpZ4sGd2QpIemgt?=
 =?us-ascii?Q?+6tSzwLSJy6EYmPrR5iGmL69y90d2KnzKpPmulvJclw3muf4ETcIlaELfKCc?=
 =?us-ascii?Q?68Op4+rZeCE8QTQARpxG9nD4YGxAGS9kd4QkglJ1PsSvFvyd8nH7p160M9m/?=
 =?us-ascii?Q?tBAblwWH6c6hqyzT8D+B17IoI/u+Mrq8WEnn8SSOPut9CFS3yBJm2GQ3kg//?=
 =?us-ascii?Q?z8VNp5ti0u3Lssc9IVB5rB0aPon4yQ1x6wxNhIUdb0PQMmvfGOaLOwYWkhpo?=
 =?us-ascii?Q?YqIB45FbNSPRi+GhDO8WYTS50tr42U4D0lUxXRN/mPaXQuYXHwhYoztdIAfr?=
 =?us-ascii?Q?bDFy7PLiarXihVQ6O6ZlrQ06DoWjUWJEANxY117lvXU1klRPonOSWPzIRs3k?=
 =?us-ascii?Q?4ZI0N51DqpVKwdHpRRMkqSVXL8FD/jONx2Z9QftoXQnYuZwCF2HSwGEASADE?=
 =?us-ascii?Q?PRwT8OEd6UZbUSJv0U2L+GnLsgpZRkrBne+Ak9mbQQcf8p9+KfX7HtoQqhFr?=
 =?us-ascii?Q?IPgxGY/fzQMKWD546luIA5uLESjPiylWJyzI1qHwHatiC9GDs4V37jMG93ck?=
 =?us-ascii?Q?wYKt4n/EUcAfjJ9cLB9kyjVnpijLiTaEkE0AyZ7IJlsXDcTFo2kogGKsFfHs?=
 =?us-ascii?Q?fMlbqgwHKUlgybjkNm/2ibJ9mabBriqVWLOYP2Z71tpw3G6i42V7zPI18Om9?=
 =?us-ascii?Q?ovnfBTMri33egv2pwBXb5Msx6ORokLI1WMBGDK8eClCGiEjogQuGrv9Y5pi7?=
 =?us-ascii?Q?mF5deJ6vFrJ+Bb09F3f+m3P+X2VrMIoFs1mGS0PkRPteW9dO3OAwMMQ+qbc+?=
 =?us-ascii?Q?igRzeuQgvjUV1GC5eWOu+mihh7qxh8R2cxzh/DKSgOzfb+WvJz1XAXzqxEf4?=
 =?us-ascii?Q?FEsSWt7vNc1HbTIIG7+7SrhQ8vn//x9VGWb/9RD0qplekcaJjKWee1+uewBF?=
 =?us-ascii?Q?A/Z07mdKrJ7UYcPFCoimgsq9lJWeGad/6PXBBVivJ7wLFgwlzxFsZxW0ZcK9?=
 =?us-ascii?Q?K6IUM6FKo4hO1FVPCNLs/aXSFspxPxkJ6IEVhk/YCW5mFO/fh06LDP2eE5td?=
 =?us-ascii?Q?zcVg5bUjrThOukJYbQWX3lFjLFCr3NdDS4e9NMzMcL8V0lsgFTGYKfTCO0po?=
 =?us-ascii?Q?UZWoBs2sDCP96tmvcKNyW7fGEBQtUaePgrCfHFyc9RI3d2sJdjS9fuxwcWGY?=
 =?us-ascii?Q?4A=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b8b44127-5a31-47dd-0798-08db92bc97a3
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Aug 2023 18:24:50.0165 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DCAa79hnqij4GN5DH4JJ/VXfEvzO+VGDjVwDuDAKdrYwXFV64iLh4KOyruDxRBgNQfbZMg2yYht6XKN24FgzFQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR04MB8796
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=ZeDFvsIdN/7QAcJlUBNojMuSKMlZ7MhoQMa+oJSHRgQ=;
 b=XPMAh6SgWOAJlCjrVA6/gHo/JsEef6U4q6RmDK2Hvr1O/IyazZiK+G6Phn/RWP6pjhR4UOOe3iD6PTchQNHypGs7SLAO5G57InxSJt9I1Y0SPGHqozT9XVkO7oBezgrNx9NLdByFwzoSBHijJ4uzoEFnYjiW3wsyms9chD6MXCc=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=XPMAh6Sg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: [Intel-wired-lan] [PATCH v3 net-next 05/10] net/sched: taprio: dump
 class stats for the actual q->qdiscs[]
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
Cc: Jiri Pirko <jiri@resnulli.us>, Pedro Tammela <pctammela@mojatatu.com>,
 Richard Cochran <richardcochran@gmail.com>,
 Jamal Hadi Salim <jhs@mojatatu.com>, linux-kernel@vger.kernel.org,
 Eric Dumazet <edumazet@google.com>, intel-wired-lan@lists.osuosl.org,
 Maxim Georgiev <glipus@gmail.com>, Cong Wang <xiyou.wangcong@gmail.com>,
 Peilin Ye <yepeilin.cs@gmail.com>, Jakub Kicinski <kuba@kernel.org>,
 Zhengchao Shao <shaozhengchao@huawei.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This makes a difference for the software scheduling mode, where
dev_queue->qdisc_sleeping is the same as the taprio root Qdisc itself,
but when we're talking about what Qdisc and stats get reported for a
traffic class, the root taprio isn't what comes to mind, but q->qdiscs[]
is.

To understand the difference, I've attempted to send 100 packets in
software mode through class 8001:5, and recorded the stats before and
after the change.

Here is before:

$ tc -s class show dev eth0
class taprio 8001:1 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:2 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:3 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:4 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:5 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:6 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:7 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:8 root leaf 8001:
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0

and here is after:

class taprio 8001:1 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:2 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:3 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:4 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:5 root
 Sent 9400 bytes 100 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:6 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:7 root
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0
class taprio 8001:8 root leaf 800d:
 Sent 0 bytes 0 pkt (dropped 0, overlimits 0 requeues 0)
 backlog 0b 0p requeues 0
 window_drops 0

The most glaring (and expected) difference is that before, all class
stats reported the global stats, whereas now, they really report just
the counters for that traffic class.

Finally, Pedro Tammela points out that there is a tc selftest which
checks specifically which handle do the child Qdiscs corresponding to
each class have. That's changing here - taprio no longer reports
tcm->tcm_info as the same handle "1:" as itself (the root Qdisc), but 0
(the handle of the default pfifo child Qdiscs). Since iproute2 does not
print a child Qdisc handle of 0, adjust the test's expected output.

Link: https://lore.kernel.org/netdev/3b83fcf6-a5e8-26fb-8c8a-ec34ec4c3342@mojatatu.com/
Signed-off-by: Vladimir Oltean <vladimir.oltean@nxp.com>
---
v2->v3: fix selftest broken by the change
v1->v2:
- reword commit message
- rebase on top of the TAPRIO_CMD_TC_STATS -> TAPRIO_CMD_QUEUE_STATS change

 net/sched/sch_taprio.c                                    | 8 +++-----
 .../selftests/tc-testing/tc-tests/qdiscs/taprio.json      | 2 +-
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/net/sched/sch_taprio.c b/net/sched/sch_taprio.c
index 06397300b40e..7f275f9f5793 100644
--- a/net/sched/sch_taprio.c
+++ b/net/sched/sch_taprio.c
@@ -2461,11 +2461,11 @@ static unsigned long taprio_find(struct Qdisc *sch, u32 classid)
 static int taprio_dump_class(struct Qdisc *sch, unsigned long cl,
 			     struct sk_buff *skb, struct tcmsg *tcm)
 {
-	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct Qdisc *child = taprio_leaf(sch, cl);
 
 	tcm->tcm_parent = TC_H_ROOT;
 	tcm->tcm_handle |= TC_H_MIN(cl);
-	tcm->tcm_info = rtnl_dereference(dev_queue->qdisc_sleeping)->handle;
+	tcm->tcm_info = child->handle;
 
 	return 0;
 }
@@ -2475,16 +2475,14 @@ static int taprio_dump_class_stats(struct Qdisc *sch, unsigned long cl,
 	__releases(d->lock)
 	__acquires(d->lock)
 {
-	struct netdev_queue *dev_queue = taprio_queue_get(sch, cl);
+	struct Qdisc *child = taprio_leaf(sch, cl);
 	struct tc_taprio_qopt_offload offload = {
 		.cmd = TAPRIO_CMD_QUEUE_STATS,
 		.queue_stats = {
 			.queue = cl - 1,
 		},
 	};
-	struct Qdisc *child;
 
-	child = rtnl_dereference(dev_queue->qdisc_sleeping);
 	if (gnet_stats_copy_basic(d, NULL, &child->bstats, true) < 0 ||
 	    qdisc_qstats_copy(d, child) < 0)
 		return -1;
diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
index a44455372646..68a7264e083d 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
@@ -104,7 +104,7 @@
         "cmdUnderTest": "$TC qdisc add dev $ETH root handle 1: taprio num_tc 3 map 2 2 1 0 2 2 2 2 2 2 2 2 2 2 2 2 queues 1@0 1@0 1@0 base-time 1000000000 sched-entry S 01 300000 flags 0x1 clockid CLOCK_TAI",
         "expExitCode": "0",
         "verifyCmd": "$TC class show dev $ETH",
-        "matchPattern": "class taprio 1:[0-9]+ root leaf 1:",
+        "matchPattern": "class taprio 1:[0-9]+ root",
         "matchCount": "8",
         "teardown": [
             "echo \"1\" > /sys/bus/netdevsim/del_device"
-- 
2.34.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
