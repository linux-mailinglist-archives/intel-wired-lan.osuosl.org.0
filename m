Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CCD743C93
	for <lists+intel-wired-lan@lfdr.de>; Fri, 30 Jun 2023 15:21:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D01B283A5A;
	Fri, 30 Jun 2023 13:21:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D01B283A5A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1688131272;
	bh=mpPg6V31BYx45D7ICKBcHbdzWJN+Vp6nrtCkABbofXg=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=TNvgwI20iJ+VeOGaqdveY49k9ISHlyTAJpcxwS8ahs0MMHY+8eQvJakJiuDZCYv9n
	 1jbEKl0GYRA83jtXYFtSamrSXlztwaIq140h+L3QSULXG+dp1mNVf2E8ez9LBOtz2M
	 wJFgxw8bWIDTxJ0rAJ1Igoe/eTz9igY5iuTYIn0+/gkFGejbJ/hz+BVmAl6hFTFnaI
	 IdMSf1H7HxGkmVajIxNu4KoDQlIq0bPmSXdMcRqB4lMxJkshiv/Bf/rbP1rHVc+kBZ
	 /5WSW5nfQma8oIR8GRWe0tn2YVnNgFfUtGWZOmtpWctAT9hbmgOhDoAlGfmneJztqe
	 a0hQN75H3+vQg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id toCHSi_5RWUI; Fri, 30 Jun 2023 13:21:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id AB36A83A50;
	Fri, 30 Jun 2023 13:21:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AB36A83A50
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id CB62E1BF341
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 13:21:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A1EF641FD4
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 13:21:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1EF641FD4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fQZlR4VPQ56A for <intel-wired-lan@lists.osuosl.org>;
 Fri, 30 Jun 2023 13:21:05 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7EE9641FCF
Received: from NAM12-BN8-obe.outbound.protection.outlook.com
 (mail-bn8nam12on2103.outbound.protection.outlook.com [40.107.237.103])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7EE9641FCF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 30 Jun 2023 13:21:05 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZufISHVXPBYTI653riWcyxwB60hf8xcMu5uV3z7PUTs3wWpeCth3HN6Fn5fFrwdVF3LTe0X3VGwSe+kcvEHFF5duZQTBteNS4eeXJ2U9ZLN9lRnCJEZyBAM4KSrcJHjYSAdC72HzY3g+d86FwwPcpt0qx64zsJqbTHUkrnXR3cHy105JqO/ATlzuwxKHTM4VzgnhBuKmL+8MLFnKFo9Fhzr3HJwnB/oU4TQ2Udb0Vr7zdgrVVgkIzjWB4xu1QSwlK6+QpvLKJ36n/AT05ACGItaFpd22f0AhB2uDs+bPoly4wUmnkxStYf1IA+ol9ooUklGBKMNzQcZGjbZ6lRMuHw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KbgusxccTyBH6AakW+gm7We4uuasvfscbFQkIgr8EUY=;
 b=LG+/jhznZOLHsRLm2FfilpK7eFFPpCM7gzLNEigpI7Usf296caarmVxYn0d7z5tPPvIBIhjUZGmSZI03t1wOetLbc5aYMeaxMCDRoaAw5Q1uCVeUncavf5fS1BN4sh1CPohg0dtX6rBNKeS3RGaQQHR/fXQaR5QPbnJx0EeWoidt6yEds/xZtKNeVGus9hFcAAzixTuwZ0e3dYeZSpjwIHtPcGrzQThl+uvXp4qheTNF8uMO0ECWlA/5o5hcbIzNfYbo3VN/OHhqiBgIEt5HmcSuv7Ih/ajLiz/7QetcMFXhnhj0KQ/fuSq9NrTaHtUJ8i7HT5VttdAv1WejIpEh2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MW3PR13MB3995.namprd13.prod.outlook.com (2603:10b6:303:52::23) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6544.19; Fri, 30 Jun
 2023 13:21:01 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%5]) with mapi id 15.20.6544.019; Fri, 30 Jun 2023
 13:21:01 +0000
Date: Fri, 30 Jun 2023 15:20:54 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Florian Kauer <florian.kauer@linutronix.de>
Message-ID: <ZJ7WtoU/doUGD7dW@corigine.com>
References: <20230630120306.8534-1-florian.kauer@linutronix.de>
Content-Disposition: inline
In-Reply-To: <20230630120306.8534-1-florian.kauer@linutronix.de>
X-ClientProxiedBy: AM0PR01CA0108.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::49) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MW3PR13MB3995:EE_
X-MS-Office365-Filtering-Correlation-Id: 000c107b-4e3f-4b6d-7cba-08db796cd984
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: FtM7IX2rLjqjnwvP6uGzXvXnrZV4VZ7/BI7sDT7ZfFe0m5KC4Pv6ePjitQjZSbLnL1+Ira/lpddP0JfD6hWNJ6zlcquQn5VvJJulEtoMR0zUlJakgk6v3oFDqGdKWMVhDFAY/NI8Oh485hZL+2U86s8JO4IGmhWRPHED0qBN5GbctzAjw3aZ1y/Ohs96TUjO9eLgqb2mB3nB/FqfVxEXohR/xR/j2dW+jjpnGgU13g1JuidWirbNsTftVwgEJGpHvHh/DBNyUsGexTHi81g9hkapdtj4ASB247xB+y1ibU9qoGYvfCMVsvxY9eg39/HFnK7OiJoEK3JDmC35qxy7HnCx628JHixmZPAmbcy3PtRu2YFc+BgRxu88vB9Jktm2wXEI/4h7I+I9/iGih+KHBJvoHbg5DS/hKFOoa3Fp3njMuOQ0CifTrjdZliT7G7K503GWHO2UF0UgXhKxyfG9TerkBeVOvh+nwKvF0x4aHsj8AXIJXYr4nB03HYOnNUcR7+ZugvZQ4/9tQ8DgOqhDG567zoDG9HSA0DUyJfZCnnSdDaTlXhlaDay3l6WRrbG96ZSBcfNebCit1idQJPksM2pUbxXcqGq41t5xRB86TCI=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(376002)(39840400004)(346002)(366004)(136003)(396003)(451199021)(8936002)(8676002)(7416002)(5660300002)(44832011)(66946007)(66556008)(66476007)(6916009)(4326008)(2906002)(316002)(41300700001)(54906003)(478600001)(6666004)(6486002)(6506007)(83380400001)(36756003)(2616005)(6512007)(186003)(38100700002)(86362001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?FqYWJkjwQyT+cgy061gQ4nM89lgTDL/j7JuUjT6hhiVTbLzpwMREQzrFyuf4?=
 =?us-ascii?Q?vI+g2wfAFEe5e5VmZ8j2M2aXKRxTesbneVxDsE12cw87o27Lw3Zg/1qBbAbe?=
 =?us-ascii?Q?mo86hAMds8Ep+esemE3qcSZHSRXFWtWGbPsqKkMIxQ+3xxezBIBIKM4fsaB5?=
 =?us-ascii?Q?+Ul0CvGtFlIMAJsw0zi9RAoqKKt1ZOP5TMCvf2DmjErqaNIKzY6U28BwQvmv?=
 =?us-ascii?Q?SKLpsZRA8u9Ce+KkapWRrU1+LBcXcW6A4kVCiVrCyvQZG2yumhimQpoiD0Fc?=
 =?us-ascii?Q?OkHnC2AIRUNQLxwmRvvGheF4cKhjz3EzZMVzpTB/6DotOEsbgXEk/q48PQzv?=
 =?us-ascii?Q?TulpOTqW7a7ze7yhfmQRxskx7uM3r8VIXMPc7BWccYRDus95dl8Nh6eYXGg1?=
 =?us-ascii?Q?siHt6TImedXkzgkSXFF5z5YSMq81lmDIxleGgwoJYMErCXxXEsBL2CXDtXRA?=
 =?us-ascii?Q?RKE1u4uJIvcwW91KdrEffqGV17j6ACjY/TVhyY0MLhgymUlHeqkdMN1A/MWM?=
 =?us-ascii?Q?A+gG/LS46yRaAmud09q9Qm4B9tNUMzmhKbyOXaF1di+UDMsHxPHT5fLfG+De?=
 =?us-ascii?Q?XyPZbpd2UW2LeaVgzeHL5AFHICPs3f2mv4q9xMM3nabggz3uGKWnqrfPI8B+?=
 =?us-ascii?Q?k6pyi2OBYMw2JCDHJmvkY2YPhY1th46IUsZ4k3lNJJhpi9xgmw2lRVkEiBJB?=
 =?us-ascii?Q?sxY3gLBoUy1ETBpWGtApqRq6MYWwdc1Wfcoes1/tAypSqiTk69c8U+QK+dTd?=
 =?us-ascii?Q?KwqO4d3Er0VYZ3AWB2Oxr+IEJxM9BLxztbpw21YBpvL+NFvHrgCSI75LELSF?=
 =?us-ascii?Q?Vx7ye4ka7SrppCxHW+sWXhO2B7eQnF8nwsYm1JxFW6AF2QM3N7g9qFW8/+LZ?=
 =?us-ascii?Q?3weLsrchY5VvwvJHQHhi1guq6k6fuB8qqnMCdX8TOPlv0f5FTdv6iS9+ZFBu?=
 =?us-ascii?Q?JfytMCTBzlC81E1u5T5ZRAZkCzz4UNB/EbMQBaf25A2E3l1wzMoYhi10prNF?=
 =?us-ascii?Q?Anlzut6nwFNIEVNQlBnH1EbqpRUshHag0raBgXI49wCiLvZtBrzxN7PR3j+g?=
 =?us-ascii?Q?JXOBYu8nF6ISXeqf+kGAM4krbZyfq0oyMr4TKG4OQaTUF/+tFOjGf9G0FyqW?=
 =?us-ascii?Q?VoSp538JJRT+IGX/n6Fodhqa6ySZusYdg82frubwbrfbvyxgoPhP+EBUxRrF?=
 =?us-ascii?Q?Tws0xGTYgJ0Kof170fAMIlEwVoxlwC/VKvi7Tgp1bSKH+Kvd3d09FRBIkGvZ?=
 =?us-ascii?Q?ITi1iPWLwMuBck4zDqPrc7iyGxPSnDg4E5zvHkKpdwPbE0+0o0JWsRhXXQAB?=
 =?us-ascii?Q?1YOZPeV7YuMdIFv3pB6NWKhV92OggyCGLetfMYsq39hcSMRroIvUqm51vspV?=
 =?us-ascii?Q?/TW/Y13ppadkhkeIyzi/LRmGHc8LP3peSf3kEdLINWizDd7zhvpzXNA4r5sH?=
 =?us-ascii?Q?xkoQ4ez81AIU/tjsegXxY7xgdW/Qm9cpDVzXJeW7gL8G1fsoYHcHjC5Gcyy6?=
 =?us-ascii?Q?6SAFRbrFHXUbgaksTyIn8Hp9nT18H7BQYogotOgH5oyEnsyf8isieJ83m4/U?=
 =?us-ascii?Q?gd9Y4fn0Zab3JezpX+QAWeX3NuYfuHEPDk2pZkTjKxAK2lyAL+TMD6XMQHxc?=
 =?us-ascii?Q?X1tpy6RQSSPne1TQjn7OlZoEY8eeznIUrxWMMuFdZmxVLZrXBe7fNP+69pGH?=
 =?us-ascii?Q?AElWxg=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 000c107b-4e3f-4b6d-7cba-08db796cd984
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 30 Jun 2023 13:21:01.6760 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Dt6RFtUNodjn36en8xnfNAz8NzmlicESJ5C+eKlbWB2ZMHZeJ0ee0HhqdoY16khz6ClB+vUPeDdcbetkxsWE+4yJyelXd3tpOS8MWgAXBD8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR13MB3995
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=KbgusxccTyBH6AakW+gm7We4uuasvfscbFQkIgr8EUY=;
 b=W1dzk/CSYivpBIwHSwCAVTUWcg+kbDiAiAWspBZgcMpKLEC7juuZCJ4e2NOn5ArTqCZyR8pXzZ9GafCf41VuVsHOCDBh49IL+Yrqp63ng6erWWe8TEA8nUmf6XMiXwekTEWJklfiGw8F1IE+q3pAznCwbpa1w2ldUqmo9m3OH98=
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=W1dzk/CS
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net v3] igc: Prevent garbled TX queue
 with XDP ZEROCOPY
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, intel-wired-lan@lists.osuosl.org,
 kurt@linutronix.de, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 linux-kernel@vger.kernel.org, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, netdev@vger.kernel.org,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S . Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Fri, Jun 30, 2023 at 02:03:06PM +0200, Florian Kauer wrote:
> In normal operation, each populated queue item has
> next_to_watch pointing to the last TX desc of the packet,
> while each cleaned item has it set to 0. In particular,
> next_to_use that points to the next (necessarily clean)
> item to use has next_to_watch set to 0.
> 
> When the TX queue is used both by an application using
> AF_XDP with ZEROCOPY as well as a second non-XDP application
> generating high traffic, the queue pointers can get in
> an invalid state where next_to_use points to an item
> where next_to_watch is NOT set to 0.
> 
> However, the implementation assumes at several places
> that this is never the case, so if it does hold,
> bad things happen. In particular, within the loop inside
> of igc_clean_tx_irq(), next_to_clean can overtake next_to_use.
> Finally, this prevents any further transmission via
> this queue and it never gets unblocked or signaled.
> Secondly, if the queue is in this garbled state,
> the inner loop of igc_clean_tx_ring() will never terminate,
> completely hogging a CPU core.
> 
> The reason is that igc_xdp_xmit_zc() reads next_to_use
> before acquiring the lock, and writing it back
> (potentially unmodified) later. If it got modified
> before locking, the outdated next_to_use is written
> pointing to an item that was already used elsewhere
> (and thus next_to_watch got written).
> 
> Fixes: 9acf59a752d4 ("igc: Enable TX via AF_XDP zero-copy")
> Signed-off-by: Florian Kauer <florian.kauer@linutronix.de>
> Reviewed-by: Kurt Kanzenbach <kurt@linutronix.de>
> Tested-by: Kurt Kanzenbach <kurt@linutronix.de>
> Acked-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
