Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CDE9D76EC9F
	for <lists+intel-wired-lan@lfdr.de>; Thu,  3 Aug 2023 16:34:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id BEB0E417F9;
	Thu,  3 Aug 2023 14:34:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org BEB0E417F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1691073250;
	bh=VH/r6vIIiSpRH8u9G8oUVjOzlIy/thFulgM80NW8gXk=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4hvDkATrpCSV8yZJmDQBOaFXntCaYRPcmcULtoxC+sLv0LXtvBq2wkIe52/LIvdLs
	 7cRqbN6t54IX8M3qsMNRaQCLCheudCDsG4bOKa4vQy5Ol0qvQ9B/kan5IBLK6VBYxV
	 sFEpxqJtAtCHFpLEksd1Y8Cc8jfzAuc0gIXVhq+N/sNjBRBWWx4/WFdQDuVr8Qx48s
	 +moNz0pq0WU7zv9aoQHH9m2smS3ESug//dgw/Owu2RLZRVFm4kLCWLCxEJ2Kyti+cg
	 yUD52I0rULznyNKw3P//KCbd74p3P6geUI4xRg8/2H+I1yQCYgmmVtW9Ye14s+2WW9
	 DQUDzxI3dIm7w==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9_O5nYB9u2m3; Thu,  3 Aug 2023 14:34:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0AD79404B5;
	Thu,  3 Aug 2023 14:34:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0AD79404B5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 159C01BF32B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:34:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C312E831EF
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:33:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C312E831EF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id kedTkGNbueEs for <intel-wired-lan@lists.osuosl.org>;
 Thu,  3 Aug 2023 14:33:55 +0000 (UTC)
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
 (mail-db5eur01on2081.outbound.protection.outlook.com [40.107.15.81])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5DD038318C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  3 Aug 2023 14:33:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5DD038318C
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ofOwaLJ+7ay3q4nAd0kzlD5Ltkozk2YRFR4y3E1Wwklt13Ov81k+xEInEoNm5XyLxu1GkpmNIbR+HtkPdodjvaouvDajQ+VglVfk0iHU8GLeZpKFwBbjMQxp7atokw9WCFzNDBl9uSknVSOYeZQtZvKJZ4Wq7+0t5zx6uHU27HzLVySwLaDpr0bx0beyZCiLHAH2tXxecGF0HxKpZZWq0bNeZGOkYD0S0QWGwq7vVwosgdmIm8Z4RyGRe1dfNRY31nI5KqrwikC9rXeviFjvUXdkgR7YE7nBe1ZaKfk0ZDLecOxv9y2piCFJiua/jJh6xHzh+nVel/fzFAY0zT7j0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=72pLYVvOoK2A7yxoQyZewqFT7D9McTTKJVdwvBF9hPw=;
 b=RrnILN8ytsVskOF6aIKWnJFsJCFKbiVSSzQLkFvJeVVUWm7le6uekD9noHSfyb8GwzPZyFWtrNbrIUcs8bkLub0Qrs0ykopiwFZ3Ziik3ugBep0+3TkkGp3t8asDNOKonEMRGPcBY5jDo+4wN5P2/6ffpRBH/qnEvt44k10QTmw4GeMD0le5gtiQ7220dpIUwrm1rXDN3QAG76b7A+GeqAUacWnXT/HN2UnRevratIZ0W7O2IvWve3YbTZSBWTluN5J8h124DgpDdYCleXPLRImBYTydv+jezgEnag3CFTM4NGR1K5OIEAlA7O6UXErw6u0HSKA8gLg0eYPm/6M6rg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com (2603:10a6:208:16d::21)
 by DBBPR04MB7995.eurprd04.prod.outlook.com (2603:10a6:10:1e5::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6631.47; Thu, 3 Aug
 2023 14:33:52 +0000
Received: from AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194]) by AM0PR04MB6452.eurprd04.prod.outlook.com
 ([fe80::6074:afac:3fae:6194%4]) with mapi id 15.20.6631.046; Thu, 3 Aug 2023
 14:33:52 +0000
Date: Thu, 3 Aug 2023 17:33:47 +0300
From: Vladimir Oltean <vladimir.oltean@nxp.com>
To: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Message-ID: <20230803143347.7hhn27hzjymdvvw6@skbuf>
References: <20230801182421.1997560-1-vladimir.oltean@nxp.com>
 <20230801182421.1997560-10-vladimir.oltean@nxp.com>
 <87pm4510r0.fsf@intel.com>
Content-Disposition: inline
In-Reply-To: <87pm4510r0.fsf@intel.com>
X-ClientProxiedBy: AS4PR09CA0024.eurprd09.prod.outlook.com
 (2603:10a6:20b:5d4::12) To AM0PR04MB6452.eurprd04.prod.outlook.com
 (2603:10a6:208:16d::21)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: AM0PR04MB6452:EE_|DBBPR04MB7995:EE_
X-MS-Office365-Filtering-Correlation-Id: 461f5ff7-a0b4-40a8-30f5-08db942ea86e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: E5C/nmAZc9O3kMTWoxdeUj519LgaSNRNLIJwkgRn+Vvva3LRqNPbch1T8lxP7KFjDoYs1M4WDoACfu9K2luPGOteNGOCIuXvmdOD1dOFXfbi8Po3PaMP9LpwmEeULltr+Gpyu2LYo9Hik2LmEuDKLWNhe2bgEAwCv3s1PoihQnCtimeCF/+lyKuR39GGb2G76j4FnjjsVP8IDM9oc26xmjMZUZD2MAJfKrLshYh9oddUCC/1Z5/MiY333ZbvseLgNaMK359YKIVq1cWn+6+682DGTu2ys3tsY5+z/RBRd3ngpaJCOA0oCgUC78ZvSFLWTVixY+8iXd6XD0y0ZC4/bCrFo4idU+GdhTdmHTXPeAozGv7fFVnSWh/tGYvTCSk8r6EmrT1cUVvDyVycApswPsqhcApgnBcATkakwwmDMPz0Tx5Cd0YMr6bc+2Za2WZazRD7ApDWTGf/81mJQ8VWThlwx/YjqlA0YMIQc0i7FHY1yrJRGh9AQWn09iTAhpd924IeuHWRFXfG6RNlRHR1HHR49LpVmH3GuDzwimrs7ikwgyQQcSpia3CfOVr2kFi9
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:AM0PR04MB6452.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(7916004)(39860400002)(366004)(136003)(346002)(376002)(396003)(451199021)(7416002)(44832011)(5660300002)(8936002)(8676002)(41300700001)(66556008)(66946007)(6916009)(66476007)(4326008)(316002)(2906002)(33716001)(54906003)(6486002)(6666004)(9686003)(6512007)(478600001)(83380400001)(86362001)(38100700002)(26005)(1076003)(6506007)(186003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?fBo2/9i06RqPl6appxR4OlstDaJap+/j6yjWDvKE71DeAQ3lIFsHt5FPKWNX?=
 =?us-ascii?Q?3b18JIiQXCWSnfcrm7k6QBECoLlVAGQKFyHMU8DGNIIPQF94DRV5IznmJxhs?=
 =?us-ascii?Q?mDE444qCowwkjIFXw2y988cEy5dtSv+DTvsgFYzmqHVRC0OTZK5g4DrtTwNh?=
 =?us-ascii?Q?9YV/5niqfdhnIUDWIUwpbKbJuU4E3zlJUQfrFNQUqFgIgIHNhe+DGqt3BKxZ?=
 =?us-ascii?Q?CWO8lQ4yU8seaDpzzjMhcRednYY01fyQ7+2nztfw74Y29KVQ6XEK8f7Lc0Q2?=
 =?us-ascii?Q?QBqLH8NRMwmKIYccy5geTGqsuWLqBSCCVLmCWsOW2DHHN+Ooer0UPcyuyWx8?=
 =?us-ascii?Q?RURUCnrY6PCMrYCaYAldFVqyCTxqEmGuZCpbCm6ryr1jr186I/u4OasyIYAR?=
 =?us-ascii?Q?ZeMza4Sk91Jmn1egy4VP+YA7T8b9/ykKBu1Ahs5sBIOIMJ1SlHVtgpU7wxO9?=
 =?us-ascii?Q?YY1jVsm9EBC8QHZZhlkdHYu5xULQQlsU0TQxQ+R4JOgLXqIn6NkeqUMJdcM7?=
 =?us-ascii?Q?eBlU9OHgxcd7eRJ7D6t2FWqgA9//mY019NoYti9AFGxI9Q0YzlxobxVJTqST?=
 =?us-ascii?Q?mL/4AufZdXf8dNwTGQ9osz9z+29pqZ0rqUp0S47KyFAf4q33zKxTnRYw+iPz?=
 =?us-ascii?Q?na3d8pg4ALx9hLabgVjyQ9g0TObEUv3WjkNRIH5Z3NAdBsPGD5hJsd6oZFZs?=
 =?us-ascii?Q?ncAbFn0M2eNp0CvvoqyCyblHFRrGKQmf1UisLQto3Ghe/VFVw5GJW43OmDjr?=
 =?us-ascii?Q?61BWyJWUuLKzVAFc+RmIBisX8oyGv5wHy00plq0+pwm37dos3Od81qbq2AXH?=
 =?us-ascii?Q?pyoZVeG4BiRgFY95RW2E+8KIGOZVabwPBJCSsVh2wl18CCymuYNhc8uEKCsl?=
 =?us-ascii?Q?QB7ZvOOzzzGLv77uCYU+sGEhY3+Hg1jfMKnal5E+CFBB6eIWdxGNmMjM+21B?=
 =?us-ascii?Q?/lHGlJdadAXbNspPl2XEwGljUQKGIBGlpExf5U4lfcqE6LLAKlNcwwdKYCnk?=
 =?us-ascii?Q?Z47/KyxIIoZVfURDtf4lpbJ9jPnXXZ08uflp1PY35kwLU85XjyWY4Bi86x7p?=
 =?us-ascii?Q?VGjI4ejVMeDMiN5akPEHIbVKAk4aOkUVOqS3CZbysLoFgqmqtHx9rfS8/gjU?=
 =?us-ascii?Q?StCspc0oIMRFjK4JBg/4iCyxSJggSc/qeOG7pOzGDKuN6+GPS7ektKuoJMHu?=
 =?us-ascii?Q?pc+l3aaJjiwx+HovaX6XCFHUXDmInFl1Ha7Nrez7nHMu9Pjq2G2Ggy4DNlxg?=
 =?us-ascii?Q?Bg2wPkOyRjr+2Ls8wl9B+rRME7IZPyrOpZ8HBjdGMI1W20yO5pwGY6umRaZv?=
 =?us-ascii?Q?Ki1SYWayeEo/eJnw5ouIgy2qniR2XkyZxTf0GCeX2vjNoGDMdzuC6kVjq+zH?=
 =?us-ascii?Q?c3VK8V6iAMSH8i2iz3j7kLZdU2SjFq2S/B6fs6SJCDOmmJVe2lF6aRI1v0oo?=
 =?us-ascii?Q?zW/oDneLhLswqHlBdczCUeDLxtV2oFZNK1lRT/gMQo5DIEaGUDCQVZUyJtJk?=
 =?us-ascii?Q?KnCukGyI/C1iGHzzeZF+jG6T8id637cC8N0VsIY8Qipoc5+pgNyf47WVDlNJ?=
 =?us-ascii?Q?+YqedCMNXlpRwyXsmo5/iP2LPKiuokpqKsWDlVWhMX+zCRlmIUKyq6rBbI9E?=
 =?us-ascii?Q?Vw=3D=3D?=
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 461f5ff7-a0b4-40a8-30f5-08db942ea86e
X-MS-Exchange-CrossTenant-AuthSource: AM0PR04MB6452.eurprd04.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Aug 2023 14:33:52.0753 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 71juRvI85b863rO5OXkrDXGq6yi5k2/oCt3UEFk8ET6vN7Llcx4SpXQH/kOBOItPez5C0MYHrxKMe/VybapIYg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR04MB7995
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=72pLYVvOoK2A7yxoQyZewqFT7D9McTTKJVdwvBF9hPw=;
 b=DfZU7C2ygoI72E4LniOOjnLLARUIPTwzzbO0pDY3nBUMD5lJusmUTF/bcMA5bAPNMPBcvYVCO+CCCp3ShUgnuZFyvHYYILE/AyFsO4qT+npA4VsMBJxIqTh7Hqv8GQojnsDeWKf1dVcWBI4oQjr6Y/WcOPpo4yNP4O/OlQEE7DU=
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (1024-bit key,
 unprotected) header.d=nxp.com header.i=@nxp.com header.a=rsa-sha256
 header.s=selector2 header.b=DfZU7C2y
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=nxp.com;
Subject: Re: [Intel-wired-lan] [PATCH v3 net-next 09/10]
 selftests/tc-testing: test that taprio can only be attached as root
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

Hi Vinicius,

On Wed, Aug 02, 2023 at 04:29:55PM -0700, Vinicius Costa Gomes wrote:
> Vladimir Oltean <vladimir.oltean@nxp.com> writes:
> This test is somehow flaky (all others are fine), 1 in ~4 times, it fails.
> 
> Taking a look at the test I couldn't quickly find out the reason for the
> flakyness.
> 
> Here's the verbose output of one of the failures:
> 
> vcgomes@otc-cfl-clr-30 ~/src/net-next/tools/testing/selftests/tc-testing $ sudo ./tdc.py -e 39b4 -v
> All test results:
> 
> 1..1
> not ok 1 39b4 - Reject grafting taprio as child qdisc of software taprio
> 	Could not match regex pattern. Verify command output:
> parse error: Objects must consist of key:value pairs at line 1, column 334

Interesting. I'm not seeing this, and I re-ran it a few times. The error
message seems to come from jq, as if it's not able to parse something.

Sorry, I only have caveman debugging techniques. Could you remove the
pipe into jq and rerun a few times, see what it prints when it fails?

diff --git a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
index de51408544e2..bb6be1f78e31 100644
--- a/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
+++ b/tools/testing/selftests/tc-testing/tc-tests/qdiscs/taprio.json
@@ -148,8 +148,8 @@
         ],
         "cmdUnderTest": "$TC qdisc replace dev $ETH parent 8001:7 taprio num_tc 8 map 0 1 2 3 4 5 6 7 queues 1@0 1@1 1@2 1@3 1@4 1@5 1@6 1@7 base-time 200 sched-entry S ff 20000000 clockid CLOCK_TAI",
         "expExitCode": "2",
-        "verifyCmd": "$TC -j qdisc show dev $ETH root | jq '.[].options.base_time'",
-        "matchPattern": "0",
+        "verifyCmd": "$TC -j qdisc show dev $ETH root",
+        "matchPattern": "\\[{\"kind\":\"taprio\",\"handle\":\"8001:\",\"root\":true,\"refcnt\":9,\"options\":{\"tc\":0,\"map\":\\[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0\\],\"queues\":\\[\\],\"clockid\":\"TAI\",\"base_time\":0,\"cycle_time\":20000000,\"cycle_time_extension\":0,\"schedule\":\\[{\"index\":0,\"cmd\":\"S\",\"gatemask\":\"0xff\",\"interval\":20000000}\\],\"max-sdu\":\\[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0\\],\"fp\":\\[\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\",\"E\"\\]}}\\]",
         "matchCount": "1",
         "teardown": [
             "$TC qdisc del dev $ETH root",
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
