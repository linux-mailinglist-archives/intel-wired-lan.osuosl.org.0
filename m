Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 793FB76ED13
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 16:46:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 073E841804;
	Thu,  3 Aug 2023 14:46:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 073E841804
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691073996;
	bh=0WX8P8uDA21XJqLsdkfginwFCyHU66e8wMcGg29gky8=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bibMHhxoy5hv2WObwoi4wRzV/2I7BQHelqMA77pv106hqVOItsHABJSEcuQm5HfT6
	 /pOfOvoc+lQjIyPAiJ7D5I/de9VdXKm+yLI/EEZCxowWo5hnFtIvfCww0EgPoldRPM
	 P0z0ZBVpQODii7hWB2cCTQaTxznmA96eq2r1eCaSJyG3pLzgbOX5rRCn8RsX9vOKMq
	 Q6msaxWsnyjFJ04W1ePg0pcl+wCVUuSi17Qkut1RgW7wmg8Gp53VBgE9HAun7Udpw8
	 0yXWWYk9FNtI98sq2m5uw1tttgApUeh8HcSHnFhDnIcigsfEe5xxXXmhKGUOBQ+4A7
	 khd5MoWprjlgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QWJuSSLb-REu; Thu,  3 Aug 2023 14:46:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id ABB7F4172A;
	Thu,  3 Aug 2023 14:46:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org ABB7F4172A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7B6361BF32B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:46:29 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 8CC0C60B7C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:45:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8CC0C60B7C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7tsiy6nUROlj for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 14:45:55 +0000 (UTC)
Received: from EUR05-AM6-obe.outbound.protection.outlook.com
 (mail-am6eur05on2075.outbound.protection.outlook.com [40.107.22.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B783360FE6
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:45:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B783360FE6
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=oHKzzQNUmGzRV5a77W7dvmZj+yig8akPlvj5ztUlCIbPFJu3WX+q7srVcgBms/GTaEux2UesQ7bAJB9HoqTwcmkiNATIcnVs0rNcVgv5tl3VnU5bzoJiTWaCHep6Eu/oKk7LhzB4KXlurb47OMl/0BX17MwxyJG2bYYhss7Ct/xe+4lo/LPK261H7nMJD2ItxHQdq3lXKZXcAg+MtI8Nu5nFRXeW/gOU1bNAmYouAvbl+rLfLKBYF6dLBEEADnWiQmiEreRUYeZVYZVjgR9p6W0xtVz/BruZwnHu1iuuIyCQL/JoWCAe58J0+pzdYqXGJjSxVOqlDr6yFkAozC50DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zlmvWB2hYooodyWd7zFVQsFvR2GKqn1LCVt4oku9WHI=;
 b=XwHY6ozfhA5/g/YUxtMinKC+MYpAwOy1JdZbyfkWhn/WkotYQUf+VtbKDU8v063+OjaA5gqchRIn8JAT8WJulKi3Dq+Z3drr1GGvzxJp1xfsyRbbitajqUpODrvQ7aHLvc5E0rqlT2HomYrgjwAoqr8mlnCfPZQjROz0OMQqaZIHQsYUl4FZOE6n3SkoMe5KYk8jbtsmz97v/BiAqVhGHxrM+/8u5AE8hlPyJaHvtDW7Wy9xME1xaXEKQxkfb4tPXqcFT9XLVExQer99yspqQjI/rZcnpb5XuM3jaeQzi2ROKFZT2Xb3sQ26fCIMXp2seC8y923FxMuqBSuARWxeEQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by AM8PR04MB7858.eurprd04.prod.outlook.com (2603:10a6:20b:237::23)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 14:45:52 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 14:45:51 +0000
Date: Thu, 3 Aug 2023 17:45:48 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230803144548.qfis7z4eoaz5h6oy@skbuf>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
 <20230801182421.1997560-7-vladimir.oltean@nxp.com>
 <87wmyd14zj.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <87wmyd14zj.fsf@intel.com>
X-ClientProxiedBy: AM0PR04CA0032.eurprd04.prod.outlook.com
 (2603:10a6:208:122::45) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|AM8PR04MB7858:EE_
X-MS-Office365-Filtering-Correlation-Id: e214c2d9-0ded-46fe-3ba0-08db94305584
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: gaTLE99BJDIOCycOU6ftGQQ3I3UQkcVA/OGDqm1hC15xvYUJThNbUFmbgPjNwHO+KmA0ErNzSoh/EsH9GZEKeyHucB3FU/rkqIrHwr3nliKKck1+gqUfpubQeWpx0gC2OP11bTylYPhsiVJJiTPuBlXqX4SbBM2UlaJimxX9upoTauFLXLKlhuvkYVGVBVWoOIcO/PpAxtM51HgjLw/m/EsMfhEJEbx/UMzWRvWOswUHKiu3IqE7pBmu3yQ/bAQ1m22Etky4800u4KzJfySI0aoDbU0XKX6mKtkUmHl4bVFhGxBMPrAyRCkf0xztUm4ah3s795RKSXZWOkoAPuig1mNuScSNTJ7IrD/4K3a81Mg7dUJsxk1oXezV8pVuZ/mSn6p2h+pUfvGPWZASlx397gcPT8huTIvvnqp/NKpqasSjEbnS8LA66dX/SYWpBEIFi0p1FtWLXWNDAmuhXzTKhrlQgbGTXtL3ini5qN8lAXst8UuR4jz3w39WUsGbcL4FJbeTbo+Uo7gBWi/4gm4RIQ0wDVci6UzmbrVqdjaXxjtVKHxdhLvKKUK1Qc7G/DYW
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(7916004)(4636009)(39860400002)(376002)(346002)(136003)(396003)(366004)(451199021)(41300700001)(8936002)(8676002)(83380400001)(186003)(26005)(1076003)(6506007)(38100700002)(33716001)(86362001)(316002)(6666004)(478600001)(6512007)(9686003)(6486002)(54906003)(6916009)(4326008)(66946007)(66556008)(66476007)(4744005)(2906002)(5660300002)(44832011)(66899021)(7416002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sk7dNCOXXeGTal9FedLFDDKCAUk+hCvr+/PcgnmD1K38YeG/Vp/jnLCo9dGL?=
 =?us-ascii?Q?0sCBQiHx1sI+Z9XaNDq2eGVk8NxTw2D4fWMaNWpNmoI+NMS0pZcoc8zoH0Nt?=
 =?us-ascii?Q?qMUZT2huvBvf+VoEkbEeBmqlrh1dwXE0IVZrVPn/fa+RsgZU5LZUKESboJro?=
 =?us-ascii?Q?mQ0HCuloMNBffjC0a2/Rqep2dEjmX6oRPqka8THl5lOxCxjHTNAJNJ26sMic?=
 =?us-ascii?Q?yUbXWvB/xGbPFa7JNq+PGpM+5rzDRzs8tajiyRJS9qJq5CC86/PTslg6ubSc?=
 =?us-ascii?Q?p65RI9M0Kl/rW47P6XpZ5bKp3buicMDdMnGu+NN2uDVULEjIWkg+nrQrAt2i?=
 =?us-ascii?Q?NtayjiyPUnWsC4A+dEw2Lt6kCxXc9UKjp/aIrMPH2gY7pIglRal0ZtbuhzfS?=
 =?us-ascii?Q?/VXEK0U8YDpOqA75NniL/HtUuVqR/L902sxOikX9ONQeO5CqcY3N8yCfXnzV?=
 =?us-ascii?Q?fPflNIW6JGl/9+W0V3JUauh1i4XiBPaHcZpP/ah1F1UL//XBVCruir3zf99+?=
 =?us-ascii?Q?QO7eFrI7hMYA9CWqNsTduMFYhKpt07hGD5cI3Nyxi1VnwFJwaWpCHwplHduc?=
 =?us-ascii?Q?44c7ON2F50rtDor+zD1Jb3tsDHrLI6yAALksUFw4YbaUkmpx85Id9fKBU9sb?=
 =?us-ascii?Q?WGDTFktv5hL/PDdV1P7dMN+KgHR850ynm9s20RRTvlK2s2eouv26D3W/zEVV?=
 =?us-ascii?Q?JFQbQ5MdS1gYCNLLG48mNSsxebRoT/JYT0mkrjXF1qsBbPPoIW0OhKOpKZx1?=
 =?us-ascii?Q?cjeu2Rw1zG7TellTW3eu7Wc7v6U2rZzBoqhkWns2BlhaNcrZMbN84Yg12mMq?=
 =?us-ascii?Q?Ih+q1/InvhTdMKECKd+PUTylhLchpRSMeqpzW1DWrG5IROFPw87QGuCzaluB?=
 =?us-ascii?Q?gE8S0CCf97vmQnyAemwxx/kHjvyhpun62IUAFD1tbh3XaUzmnOd+bNKSD0CU?=
 =?us-ascii?Q?YmervLGPzf033TIEueuYh5FmpyDRPF8RxhP5seHic1fbE6v4KpEgCHQQcC/l?=
 =?us-ascii?Q?6C2ErEdAxA3gB3Ur5jV1vaUwD3SoN7PVyVTyRE0gJgC/4IqpOPAdWKECCz+h?=
 =?us-ascii?Q?zJSNtpRuFAqO40iXSMA59CKDjuvVuHyclHD4bzYvGFlE6zMk/bbRO+/uYxi+?=
 =?us-ascii?Q?98Ta983sov0TcMemuIZKvdGO8cNcrbsf6S8bjGJscgpZ/X25gWFXDT6kcT6V?=
 =?us-ascii?Q?k5w70KFpoF+iWXfAed97onWbQ1crSSmCrBLYZ9EJq3wvO5A37poBOrnHJlNA?=
 =?us-ascii?Q?/pV90KiwvuZr7UKuko+9ZF5JMnW25n5Zxur7tCiorT8gN/Xz/itNmXIYikco?=
 =?us-ascii?Q?w9zFAPYynsCS06CvfS8o0LsNZvxZ+cOZv8jnITc6L0OAf4apEHv30QTugIun?=
 =?us-ascii?Q?qtSWweWHauWxAcvsOgIOq8DsNrn8tWifQjNRl+dopsrlM/CcnvsR3/irL7/I?=
 =?us-ascii?Q?jprIk0SEbRdc+Xf8V5s1qkTBP/xZPNaSyu/PGWto/NwBSYkUz/fmfQILv1CC?=
 =?us-ascii?Q?5tTm/PEXNjq6UUmEOG1xzHBhRNLxO87wuw/YHSmNMMWQnEPDLIBiBZE+KplB?=
 =?us-ascii?Q?3SDU+vN2qWhrsJ14P0PHGWhYGkZ/9ygRN0yYorYH9SoBgeIFRwiSwDlJLAmn?=
 =?us-ascii?Q?fg=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e214c2d9-0ded-46fe-3ba0-08db94305584
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2023 14:45:51.8627 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: C5bvKKSscDPKnXW0ciF1rFPhJk9pU4tXI8BbEPcrKqPbnMKOHzpQTebqUscxnI6PqbPRc4mHcld9KAwZfmT2qw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM8PR04MB7858
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=zlmvWB2hYooodyWd7zFVQsFvR2GKqn1LCVt4oku9WHI=;
 b=IjCtDatWZfqOplIDhrtbaGxrHGtPmIcr+8X/GWb3oqmnu/YfblRZnO6PsToRcZMa/pI9mUz7bNke1U2gK5QR3a/t4AKGMRI4ftfSI0HQx5TPSRaWCPKPK0A4OP6Y7WEkGKfdM/Bz4pTc3N8hpW4hpFoNm/RYNIhyg9QOxLiI1kg=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=IjCtDatW
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 06/10] net: ptp: create a
 mock-up PTP Hardware Clock driver
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
 netdev@vger.kernel.org, Richard Cochran <richardcochran@gmail.com>,
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

On Wed, Aug 02, 2023 at 02:58:24PM -0700, Vinicius Costa Gomes wrote:
> > +static DEFINE_SPINLOCK(mock_phc_lock);
> > +
> 
> Not a big deal, but as it is possible to have multiple netdevsim
> instances (is it?), I think it's better to move the lock inside struct
> mock_phc.

Ok. I'll respin with this and Kurt's comments addressed. I'll wait for a
little bit longer, in case there are more change requests.
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
