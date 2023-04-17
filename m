Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 34BE06E46D7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Apr 2023 13:53:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id ACBAB61461;
	Mon, 17 Apr 2023 11:53:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org ACBAB61461
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1681732388;
	bh=BJjATvFnHL5oObz3CL+qdKYE9bgw/wPTOx+9f2TmqRY=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=G5NQ6CCl/y6dSux4s7y7xujZG5lM3IfYnVnaaswo7dCTcmICoPbGwfFMEVY1F9UX1
	 7t+eILpjg1debA1AT2cE757mRxQWDvN+zc2H3iTyHV+nnp95PyHpUZDrmmyliswe9f
	 7v3EbbxBEc3nZMjfEb8hZHVkGh2OS59eiUV6+MPcPMQvLso7KluChIVL5GbSGj69jh
	 ZIf+zd0VwKmYzuFiYQhaH3tmbHuQ4l+6c2vccHQXf6ClRtN2EiKVHsDyvEVYixCHI2
	 BkFfB/OOt989bQjv42TEkQCUTURYNthgXzYJUgy6x6nkJ1mFf4lha06oI2wVuLiGbl
	 tT6kZ0lwzGbbQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id laiVsWuW8_F3; Mon, 17 Apr 2023 11:53:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 539F861418;
	Mon, 17 Apr 2023 11:53:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 539F861418
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 353AE1C4196
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 11:52:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07D0B61411
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 11:52:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 07D0B61411
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hXM86boJ7nRp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Apr 2023 11:52:58 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5B443613FA
Received: from NAM12-DM6-obe.outbound.protection.outlook.com
 (mail-dm6nam12on2097.outbound.protection.outlook.com [40.107.243.97])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 5B443613FA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Apr 2023 11:52:58 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AlgmGpMsC2UaOeV3Xe3we1WhQwmfyGfu0bLeQ1r2Bi4vBkRnC1pwH7lw1tR2HI3qVEJZjva3PjcHqJpTwnSZiFDjyvtRP9QQMqrrP2fic27T3D/ECYkT5jPoT5t8ZPv+X8F/+G2V+vAEwetmtn9qoId8QUb3hWLWW3cVfowMLW8SupBW+yg/CFb8T20KScfmtfrqpua4dUaVSVoWsy4+IYtUvofYJvNBggLp5IiobRZ90hqjGme0GPMDPZRN60VXN17+7Wyci7GeK6UtefwCnL5s7CnXyd/UabY06mgRnPAOVYURKH0ZSIOSPTMQ+htd23e8bcmXU+2uuJa1F2VETw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q1p9J/ezBM2dPgCnRz9t9JjuYz4RX/QDQ+ZyWLWqzmw=;
 b=EX5AoK0z7UsjfiDAbyaTcCy2EuKbuYEPMKtMJJjWj/s5I/yds+GfjQKFujLinljySn2Vx5zwJwD2UcpRdVFblsaIY08MeC6i/fUCmiU84yxWZSux4bRnPEbGhiXnJ+uJsPoS2Qs4briD+vAG7ZQ3l8hVZPivPbrkC3/vu/y5TZnHKyjt1WUVujzTkC1aAvM99dqSSUU53U+QZuUo99vil3HXVWO/pZHFuqQctVk0c0hSF23crw2M1PzVZu5f8hgTFyDbFQ2ieQsF1smzKrvUwlihzdZ9q6jSDuK0T07OZaLuOxvh5EbJCZPvD72q3P1kKiwsYpMsYZK43vRa3b7swA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by MN2PR13MB3807.namprd13.prod.outlook.com (2603:10b6:208:1eb::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6298.45; Mon, 17 Apr
 2023 11:52:56 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::89d1:63f2:2ed4:9169%5]) with mapi id 15.20.6298.045; Mon, 17 Apr 2023
 11:52:56 +0000
Date: Mon, 17 Apr 2023 13:52:49 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Michal Schmidt <mschmidt@redhat.com>
Message-ID: <ZD0zEfIfscjMXF/v@corigine.com>
References: <20230412081929.173220-1-mschmidt@redhat.com>
 <20230412081929.173220-4-mschmidt@redhat.com>
Content-Disposition: inline
In-Reply-To: <20230412081929.173220-4-mschmidt@redhat.com>
X-ClientProxiedBy: AM9P193CA0016.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:20b:21e::21) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|MN2PR13MB3807:EE_
X-MS-Office365-Filtering-Correlation-Id: 6c3278be-178b-4646-adfb-08db3f3a4883
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7yTfJG9Objqp0ys1wJl1wF4zmBKaAGMkuuA9roQV69s8h2XTao1w8Hu9XxhAHHGZqX9A09WSq62TrohGMnLVmI5Fkp4TmyjeJgkFt1BcN5veSlrQzIxTihTYxUHo8NZRowKzyV/efIRglSKwxQIiwVwILy8xq2jBZAhIpjvEYOFTKmyFJdYlNIQDtMnHPmUg/yVdK5GN2jMuGWDQL3UZL27OuFCgjhN9pWwiHwzRURtEkm86Mv2kTLRG4lTq0+lwJcIqwXVBFDX6XNMCZLloUuTuQXgDpf7E0t/DA4v/UVm0sEoZ8o2Tu8UmFXYPpIauLIWMdIj7a5aiEoPfhokDh9nS9+Wv5HNSUt613O0vUoUUUlheLMpbSseT8BVRdU0v2MjyTKXry8gwjAFoQXUnaHMeHxYrQa7KQ6EFEtisGRZ6GjihZjJgAQwlvpRqCT54tGc/ipE4V5jX2YJhDv+SCT/SmqBgnU8Y46nVBL3VYPShPwASaDc3JNWBQJ2mU1LfjBSUMXHnajDRmHfqMVbMMLc45r1WNEqhLj223lubfo4igBzzljA3KddDFZjySFrL
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(346002)(366004)(136003)(376002)(39830400003)(396003)(451199021)(5660300002)(8676002)(8936002)(41300700001)(7416002)(44832011)(316002)(6916009)(4326008)(4744005)(66946007)(66556008)(66476007)(2906002)(54906003)(478600001)(86362001)(6486002)(6666004)(38100700002)(6506007)(186003)(6512007)(36756003)(2616005);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7iGNGC4sRTTyCw6soSA9jparok1J/8U1UiYg70Dh8NYqK4a3u34jRxl1fCHI?=
 =?us-ascii?Q?QNh/koWA8JtmAG/u4N0VEWJbzO3YZjnMi2f/6iaxmfKkYbOB+fIqegzW5u5r?=
 =?us-ascii?Q?TqCO0U18QlrdMOgFHVIb4Z/55otfpgswAgQfMkY6q5kIVPPrF8DfnkSXvKXt?=
 =?us-ascii?Q?Gi6IBgGXGeRULK6hk+MpQ3TXhtTNcEEvAgBw69JCeWHtmoo1hMpWAHY0D76Q?=
 =?us-ascii?Q?F0k5Xe+jiJcsjMF0AVoWx1YHU1j/Q6TpwNsD1LXVGLEO7/89UuEpPV+u/OYl?=
 =?us-ascii?Q?VtZlo6Ji0Y7/L19nQ7jsI726GFDnESIrQsTmcP4LG2Slvmx4CEfoG5L+Oteh?=
 =?us-ascii?Q?JM1IcpT0871wumz/6eKnGL339AsC2eOWGTYNpxwLhHhomg2TeiVx+5h111Lm?=
 =?us-ascii?Q?Vz+uIFGloPbj8lazB28awm/Grw1bYem7E8BoZZJOvDuZxKOibhwI9zVEpj7z?=
 =?us-ascii?Q?xlCLlZVWY6wUC2LlPvLzoLVY1re3elxptZdvoZqw4XOoGi6EaUYZ96WY8shm?=
 =?us-ascii?Q?KespdPc2qLHXsLxuMXdnrhKM3HKUj46RHEAJEAede2cJdOGSBhwMTX2RuN7I?=
 =?us-ascii?Q?Q9QWBbJ3EcIOHiIkwIgmDV39bJTjPFxJk2h3jJPGCRpABjF5iqF1qScX+bru?=
 =?us-ascii?Q?yUYPzuj8GGV/pTJANOzR0u4gWjcTgMUeKLVtHuqsue+hMRSobUZ08OwZelND?=
 =?us-ascii?Q?1XYLgk5ERPA1jeO9qp4TV6y6UO7Udu6q5lPVZcqOZbf1f/poGfi4we34iZqH?=
 =?us-ascii?Q?r4iUgcO3x9fxBeFC3rl5umzLFaBpntw9TRMWA5BcrxpScB5Wm9bieXaeUo+o?=
 =?us-ascii?Q?tSccfODK9VonypgM+93+a8l9LPDsn14HjFsU0qPwk5CmyOIUmwuu1IbTqnjf?=
 =?us-ascii?Q?QI0A8eT5Q/H2unHELg8DlkJiuX8ZlaiGyUg2yc6F2aVXdSsqNAsboIdpNcj4?=
 =?us-ascii?Q?oSuoL1mXrPuMeKRlYbhLl/75DWkC0byNyhRG7tyk23oBfWe3hJKn+C5qrVX9?=
 =?us-ascii?Q?BVhtPyHstRXqGM/DnRhMBScUROWYQ+09wnJq8OivssvZCfLj7VaNdbBTBLgZ?=
 =?us-ascii?Q?p7ihmqPtADZB2cKifEHR4Wy+yhMu0qj+hUkRHtvCem7Et93IAeZBAq7uBMGt?=
 =?us-ascii?Q?z75yfWzx+JHJTR3aiDxPqkM7sRbf1Ov71fa0mI7/VJpdFxBOB8a57QfItAv2?=
 =?us-ascii?Q?5gdl3Fop7Ek4r0rbS68Wm0od5hhnHHu+WLtZFJyc1lNvtFdWdO74qDKBsqo5?=
 =?us-ascii?Q?vbLWSqdaxofug2AeB9o9QReKZfc3DZXLyDTO2T0r1HH7koFfAj+1LZ0sCgsR?=
 =?us-ascii?Q?FWTwEikLw5ujlYYSsrPSp4FoXwOiFjPRJ7hCrunrM3xG5Gq2V+qmbgAOUzP6?=
 =?us-ascii?Q?1CPj+i1wn4dfPdZh37i5wfHixxOwqAcIy8rpyzHWqPJ0BvVJRnrxvft2gaM1?=
 =?us-ascii?Q?krikDoiAsF/o9LG1gpF3CaZevozMpctr+uvnARoBz52Rz9MefzzlFulU1XxH?=
 =?us-ascii?Q?PPUBxmtjsPujcbVOJTnMOzsIr0nd7NblKhsjMAcTNq5jO5NCb1uOUfykzHcD?=
 =?us-ascii?Q?/0Bux/8llXWAxy/oB40foTS+NpCRY4sKM2s2RaVazPgJ+lsl/29diqBGli70?=
 =?us-ascii?Q?cHB5X9h4ZufWaXmyjHi9YIcdpgvGl5jr8xTKsLQO5dY+t1uINy6X9HjbpqqL?=
 =?us-ascii?Q?AS2dTA=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 6c3278be-178b-4646-adfb-08db3f3a4883
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Apr 2023 11:52:56.2336 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HoYN3ubTIJwKY0pk1NN0wJ7VPah8CG5OOQ2DMbnL00pWuTPtX6T7U2Ids03RfbWc6zUsprOteRwehQU6afEohkCBKSijR4221P8ra+lJDHU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR13MB3807
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=q1p9J/ezBM2dPgCnRz9t9JjuYz4RX/QDQ+ZyWLWqzmw=;
 b=P3rIDwXnS8IuNmwGmYprZAqKQ6aVfnWhybxo55/E/wu4tts+iBC+OxuQWqZ+ymSjhEl4aySSaux+1cuvaykR/JLJBCJQOiV9xbiwB4YU/DgFYmFqG4eZb3Fmb7oUTnffOV1JJZ5W5WQnGiP5r8zatlDoJTbaVvrZ8J3YoKQBidc=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=P3rIDwXn
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v2 3/6] ice: remove
 ice_ctl_q_info::sq_cmd_timeout
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Karol Kolacinski <karol.kolacinski@intel.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, intel-wired-lan@lists.osuosl.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Apr 12, 2023 at 10:19:26AM +0200, Michal Schmidt wrote:
> sq_cmd_timeout is initialized to ICE_CTL_Q_SQ_CMD_TIMEOUT and never
> changed, so just use the constant directly.
> 
> Suggested-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

LGTM, thanks.

Reviewed-by: Simon Horman <simon.horman@corigine.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
