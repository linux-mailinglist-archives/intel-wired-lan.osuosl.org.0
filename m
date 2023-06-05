Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F909722257
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 11:36:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 425EE60F32;
	Mon,  5 Jun 2023 09:36:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 425EE60F32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685957813;
	bh=4DBIYmcezJtGOQ0kIXY7gRZYbo+vUdR7qLvXynAAS1g=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=aFgWSLyDtwyfre++gZZxeRuGEW25WLk2Jm+weXnGpNlLoc4lU77UDeJjUDRWZpP48
	 dMMNE+b6vmiolsveOLXWizwl6TPz8NRMaXAjCPhmMtdKo8Gck4k35dNYscxtjYAYck
	 dwu5LkWPLCKj1JDeeUBjLC/3cC0zHHa2ZGOhQBK9EY3LM5t5qnTIv2FngaVNA+BPCV
	 dOHClRLCv8Z5Gn8FLM85USlhTwt+E7/Ue3gxhNWa4ZC6Ha6P9b+76wpH0fmu9fkNBL
	 +1jxrdm2fTkrGAKGo4mfSuIXHd/W4P29+EFnIKZW12J17wZAY6X272Vnuo6eDl5zpk
	 TRDjbtHgwRBRQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ojt_-DHmcJwW; Mon,  5 Jun 2023 09:36:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2855460F00;
	Mon,  5 Jun 2023 09:36:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2855460F00
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 786F91BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:36:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 59DFA60C02
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:36:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 59DFA60C02
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id SV-F9bUvKwF4 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 09:36:45 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6454060B8F
Received: from NAM10-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam10on2138.outbound.protection.outlook.com [40.107.94.138])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6454060B8F
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:36:45 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dhnqu0Ulujc46cGGiVj8Ii9/cdmZyMVhq7p2ZZeYUNDQ8LvhIVi9WRNwHVPadzxt5JbZCL5Q/fStI02XlKV5+lPwmbY1gnFpokQMmfQPMRu+78N7x0JWJnQ1bm7LmAGfXnakdaQYfItYUROZ9g3jZcM8AT2+2IZ4n77O7vVAAeAENOIu0XGlBiYzBKMvitW6ddM4mbSN/llCne+sNlsR5zT8Z3S8w9dyfOPdsl1HZ3Dk2sJxbQobzS0Dss0CfuhTsLr7t7PxJYIdTYRguKC06riyOKkrn879LNuMxf5oyltkaPGfOMuqNVULwU32fVEPawBg8UxH31AfH9dTQAzBig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FSsIOGHDd72N3CevrcinFVnlFkEPNP8Sa10nCXyiIXg=;
 b=Ui4QweUfVzTsJ/7esdU2zsxaKN+Bir+JQzTVQ2gQisHrE+eV0v3q4C4uDHpeANt/3tS4e5remlJ25oa8vbkcYCvFYVejvmxfWsxCa4zIrheaDR/FyHQkpY2DQKS04qysTqDqn6tWkY15v2YwIyc6NrEhR+yA0Z4xnufPxi9w6skHTUxVB7ux+if81Jc2lDNMG0CqTTU01ZPn8zpzxdJrYqLKzEOeAa9y46rQyrXlTHYmXQRe0mHvNTrkMJYZUmzva1R0pEeCP4ZlAhxetR4qtJnOeI3WF/RQ7k+rgOuap26D376foikLrdympkbtea1OuKy9Y8Ylqd62yneHvRZgLg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH0PR13MB4940.namprd13.prod.outlook.com (2603:10b6:510:a0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 09:36:42 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 09:36:42 +0000
Date: Mon, 5 Jun 2023 11:36:35 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZH2so60L2a6J691E@corigine.com>
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
 <20230601131929.294667-6-marcin.szycik@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230601131929.294667-6-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: AS4P192CA0024.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:5e1::16) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH0PR13MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: b4664557-8135-43fb-547f-08db65a85e90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: yIq7ElSspC9ep6xJoYdtFVvAMZvPOC2sl6zafjzmqxRcRfX6UX6MoOtMyzeJNx8GOL46ItwdOy9VynPgnrh0qNzDCdcbumn9zh2L+eb41G9csiVDMfetedsf2yTLOVA6yh+dz7bSU0MdoyRJlM5RXMV6kB3alAcf93tdIXsB1MwXUNjAn0uSubUEkH+wtV9FV00n8y7oYQvVQEhevLBtU3om3HzISPYArwA2hAObvon+mcDJe2AhvttcGAb3Z4Lx1FRMddBiyp70JRhPO0d8YxjLpLjeClSfitv9VmM4HeTEbMD0J1OPV2iscySS4btp6O7Byxwb95q+8QG2/X709X+6txcmKg4bZFFfLdxJTEFeI0JglSS3FZj5+X4ilmfa/ZE17Y3tmYiNPKynLZjkVTKQfrExpHf4Ztc/31dSGLoms5Ls53CepJ4roFTGoCwN9KlPplIm1tB8IN1z8a/wwVB89ZhqOiC235Fvg1SceWCa6LYEjiFRp5OhMtHLgELDiRrWLqOqfiuuVlds3eGpb/zEtMQsANnCo9ju82gJt8cIqfOJciLoWUMej0E3Q2pY
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(39840400004)(376002)(366004)(396003)(451199021)(478600001)(8936002)(8676002)(5660300002)(44832011)(7416002)(36756003)(2906002)(4744005)(86362001)(4326008)(6916009)(66476007)(66556008)(316002)(66946007)(38100700002)(41300700001)(2616005)(6512007)(6506007)(186003)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?TCMryoTmY1zMh3gJKvNtKuPm8tKLulGre5JFVQknFgkMtMdUq8HGDj7IduYN?=
 =?us-ascii?Q?YYltbmbJcPaz7iD02nz3VK4B3lNdK+kEGnGxIewXUGqzpRP/rYo5RZUxLEEf?=
 =?us-ascii?Q?LJSkEumrAHdDkF7OcYh6yQH5ZWFbbwO2RiJqIx+nFbzPvbLrL5Kpktqz6248?=
 =?us-ascii?Q?7pwUqbp6Bqqvtwa/5AoaJubLp/iB/KGCRfLh3m1mOuzfCwYtCjNBQavXTHlE?=
 =?us-ascii?Q?viQvooKG79cw9pK45PTYA/fcIWwYpxrEiVF1UqVhNbQWO86hrwaKwJEZPivy?=
 =?us-ascii?Q?nKIA58BPCI9R8f6uKNWcK9YrooCZSqajkUF+SJvRpOjVHyJVZX5Aabop1XWx?=
 =?us-ascii?Q?YG8T0tlyRFM40FXlGPDd+cjxZ/ihaB6qIbTNBmNtZMAY0Jy+N142eHfhnXuJ?=
 =?us-ascii?Q?InunNoLcrFMzHvbIwCpty/J5RinkAS86EhMTrc5dEifYzVSu76E3DySpI0JT?=
 =?us-ascii?Q?8M1TQo4+nJMcGxCQuyrt7YZos44CIth4QLahm4h+wIwGR5tkKaj1MNOU56b5?=
 =?us-ascii?Q?dHU1S+qann5JFcbnVhWJTtRVTTQo5InfGtENQhYfpNx+vyRiY7Pxv9ruY9Ln?=
 =?us-ascii?Q?9w3EHwDmRPbgah4SGRrLD536bms9HSPjbh+PxZFVotOxXdyp12EUVuUaJFe5?=
 =?us-ascii?Q?1PjM36EXBbzYpRPaGxfGp5P33tjxeOWRKyBUSnmX9S++oZ01AgB8cdnJOVbt?=
 =?us-ascii?Q?tpoC74K7VbO+k0tqsizcAKNAD7ppdk6ocuQ3XRWOm2WP9qrJepqFnnzUJufk?=
 =?us-ascii?Q?rmkq3g+01IUDoxvSLlQYxPZWgBu8OfBFe+z+eqZKXVSEw9SSnDsaGvPHD7el?=
 =?us-ascii?Q?wH4FCpswGf9j8t9E1Yv1LjO9FYGf5hVaSs0oCDQsGVZfCYjqYi1ZcJkUhsY1?=
 =?us-ascii?Q?X/Y+Z81gWDyipJHFT2RsQyvf972Qt7DC/XPe8/k67qAIN1Mz+eM3WQ2+sAEt?=
 =?us-ascii?Q?5kN2WSA6p7/FrX0HXZOxv8Xe4qoVmHIrf5hZc4orpoz0e1iXucLlhD0I3aPQ?=
 =?us-ascii?Q?jEY+tJwQgGmD6Ek7O/63BqxKPo11hMY3tiaA0jB+I2/usEpHiPmdqkI4HESi?=
 =?us-ascii?Q?lY9UNax3kTqKwjvTzwF+hFg5dYSgZir1QL76CLHGV2rwcNeZDfkFR4t7HTgv?=
 =?us-ascii?Q?cnS3URtbQ+xq+/09j1GkhPRPyuqTll5Y2F8z+ilheR8Zoi/p1UL///LHBje+?=
 =?us-ascii?Q?Lq8lv6+BlfqZAERjsPnMej8X95fZP+kCdtERQDXZW9/9JchEkSyDoMbCvsfS?=
 =?us-ascii?Q?v1YXtXyG6YhiZNi6/VKCmkHrar2IdhpD3MNmjHXYmwCAd6AvNBWkEEfp6gfh?=
 =?us-ascii?Q?bSQT5KqDuJ3CDOORhFhw+OYyphInF4GpT0OZ0VYx+09wENS32ee06ehcdayC?=
 =?us-ascii?Q?KVgqWmV84ysaYK7OMr3SulR8UIa/d+Cw+8qf2kT8meT46eh5F4912tbhrHeM?=
 =?us-ascii?Q?PM7YoOxofYcduqX2Eu04jO5HuX9Od7/Upi3B3uEfWMyZIBVtN9RC0LjSu/k/?=
 =?us-ascii?Q?KVskVZH4npwnpRsj11gb81/I+TVTmp0pPsRm41CNunMDA4Fxa1y3sddYkqNL?=
 =?us-ascii?Q?GnzTxp/LhfVrJhupAg8KcBnmWgMXtzyGZ844BniehQvgBD0nL4dAUXgbLwhh?=
 =?us-ascii?Q?VD634X/pV2ddDaCkoXWsy6kPfoaV1JMhKsUP5m03vLTcZHL5PrVWHkpH2WC3?=
 =?us-ascii?Q?YEyiww=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b4664557-8135-43fb-547f-08db65a85e90
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 09:36:41.9518 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0dpu2tJHA4va3lAIdjdfawcpuGbNyTigl4UYdI2QWnhs3Z289LZIbQhMejfCklR8uxtuqSvzeXQDL5z4k57+OSJbNo0F7e3aajbsiuNkglA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB4940
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FSsIOGHDd72N3CevrcinFVnlFkEPNP8Sa10nCXyiIXg=;
 b=QLqgxmzgsJEhA80xIqAeNMsLHtijanEd/R7G9VMB3/zJtYYI07eHSM+REaZRu4V0yK2seA/ot81n7YLgY4mNsZNKSrqlVcKc1dG0CbIdlV4PDmf0fA/YcPsClioQPdNZzr5td3JmFlAwsgk4dFxJBqpPuQPJAznMBxHmv2b5tCM=
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=QLqgxmzg
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next 5/6] ice: refactor
 ICE_TC_FLWR_FIELD_ENC_OPTS
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
Cc: jiri@resnulli.us, netdev@vger.kernel.org, idosch@nvidia.com,
 jesse.brandeburg@intel.com, kuba@kernel.org, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Jun 01, 2023 at 03:19:28PM +0200, Marcin Szycik wrote:
> FLOW_DISSECTOR_KEY_ENC_OPTS can be used for multiple headers, but currently
> it is treated as GTP-exclusive in ice. Rename ICE_TC_FLWR_FIELD_ENC_OPTS to
> ICE_TC_FLWR_FIELD_GTP_OPTS and check for tunnel type earlier. After this
> refactor, it is easier to add new headers using FLOW_DISSECTOR_KEY_ENC_OPTS
> - instead of checking tunnel type in ice_tc_count_lkups() and
> ice_tc_fill_tunnel_outer(), it needs to be checked only once, in
> ice_parse_tunnel_attr().
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
