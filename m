Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id ECC7972225F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  5 Jun 2023 11:38:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83D2760F25;
	Mon,  5 Jun 2023 09:38:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 83D2760F25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1685957905;
	bh=etnDN8pfCPMIw1Wq0oxSu0EeVbrbjr0Fg4MrvfHEp48=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=IaFpDTNrDKWc2DdClB8R8x+NBAwZoivtOMjIH0c48GrDIr/8ojARU22UD3XoErTMM
	 U504r6jTFfp+jddlS1I4BtOTzOMH9U1HrfkD7Ej9KPDcdeYc/BJBUTdEN3bwntoNNs
	 B7JbFUypdX+QDnK5JxC/Y/US6cUY/RRsS8aJ6Qz4il7ao7LMEZj0UHxg+3xU0i3ZzO
	 vhzd2BTAJx7g+9aFbQcCjVg3hq5wi4hK3o1QV92lLVF+CnMwQvenzCVXifamlMFRYD
	 PBLE1xpDCVrA0fpmrnV3vHZXr5mO9AVAflpGY1YJuwVgily6/sRRXABr+fp9g7vMUj
	 7e37TsRMYyTtg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id LBHUSIIyH0Lk; Mon,  5 Jun 2023 09:38:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 65F4E60C02;
	Mon,  5 Jun 2023 09:38:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 65F4E60C02
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1AC871BF3D1
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:38:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2BBA408C3
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:38:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2BBA408C3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C0rW3hOfwAxg for <intel-wired-lan@lists.osuosl.org>;
 Mon,  5 Jun 2023 09:38:18 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 478A6409E9
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2138.outbound.protection.outlook.com [40.107.92.138])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 478A6409E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  5 Jun 2023 09:38:18 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S5g8HL+iyeVQJlnP1Vl0XHs1gW40OP50i9N5wPEWx536m8XlykNRnZjHZ16L50/p73VdpKkc5TpvoR+dg/Ka4TsgohJZTnDhJHE4LiGqma2x1QZzofO3xCblv2fsVo0jZFV4CiO1lgsS7hBn4604nwJ+pMHHR8DGgeRzdReE4lLWzPyBy4PWaodu4yEmww5lpRRRV0VRZjX0E8wri+JHtbDMQhkaxmVcbCauzF1YEYEkFuOLrIo8oTZPUiRs/CT1+a6Ut/xgdjZWUp/ycYrT/oyYUWGsJdwBx1piykKLsdaFVf2blshaaYZS2IVnRZV+6sLK0aa4wIjrc2JMi46PcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=l0U7Dphp26dWA959vN6DKBXwoQzDyKw3TfXGeNTovJE=;
 b=IKpTHtTmz32J23+ZNBqdtZXegIAY+6Hiu+zb/X4IF6iIfNLRrxAc0Fa1OuN2VX7lHSq1olBmoQGvrudsSYcO4kFatqzw+76AYcdKBMzZXuXGetI45SE2TcYsjOIkFmiQqvwcSratRSmf/R9R+yqwvG0pqw5S1zCP+3TcPZK9IB1ab7QQEDmjFbKXnBZHX7sVmPZRrNNGGanRJO5W/CE/2xG+51faxcpSLh0JgaYCAWH8gjwUIQNLppE+oRT7GEqk3NT9oDzDGG1gC5pCwE+1zNapGMCHoPlmwdfKvRKhY6UuCGIKRZrAsUH2x4DoA2T1pptm+XEOPisNjVi1gLMmOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by PH0PR13MB4940.namprd13.prod.outlook.com (2603:10b6:510:a0::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.32; Mon, 5 Jun
 2023 09:38:16 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::5e55:9a39:751f:55f6%3]) with mapi id 15.20.6455.030; Mon, 5 Jun 2023
 09:38:16 +0000
Date: Mon, 5 Jun 2023 11:38:10 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Marcin Szycik <marcin.szycik@linux.intel.com>
Message-ID: <ZH2tAuCurDvfSaEq@corigine.com>
References: <20230601131929.294667-1-marcin.szycik@linux.intel.com>
 <20230601131929.294667-7-marcin.szycik@linux.intel.com>
Content-Disposition: inline
In-Reply-To: <20230601131929.294667-7-marcin.szycik@linux.intel.com>
X-ClientProxiedBy: AS4P192CA0050.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:20b:658::12) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|PH0PR13MB4940:EE_
X-MS-Office365-Filtering-Correlation-Id: 7aec3d46-95f8-4965-8691-08db65a896fb
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: zXimdRvQsN9ZGLUvJdizxf9GTzOQDud6n8ALlnxo/r8ynr42k5x1jKWHWB7mhF3oM7sEJ24sTFNiGRhZ7IA9y9KI+94t10iB7AYDTRB4bEFkPzLZ0XZEofjGPurvZxWtqi7adT5yL+sSXXhYf4qqLjqAzkBbchWzdoFyJbgprB7KWNVZPYCkGVBU9fO5PXPJLMjop4a409kV7idqCKpU3tr/S4ZpeHFXYTWX0W0ttBJ6K+Nlf2EBpt/v3TYz24533PELF3yqD8GKtUD+TwRJlidtlKK0JQeo/2t9GEt1lGi98pVa56a8gVHyY6LfATH5xd50IlcUrm+fBUEc6dfx9eMo/eft8BYjZKfdNwoyYtmdG72wy7oe/cQGRJf57eEMuY6bT85G0g92izLvEBMHYB1ViLK1bsIONrBwJo3AgGJbh71ADXS0+ntKsKykOBbP7ERgHL5Hklegv1lrYhCbVJjfCEjcYiL1S+qvdQr+X/UajXRlUrivQ6ya00j1szs8/81kkeZn8qW04F1Wl0J9R+K/waxSTNZwYjDph5lb2Ani/ou/iTmk0LPj8ARPyElb
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(136003)(346002)(39840400004)(376002)(366004)(396003)(451199021)(478600001)(8936002)(8676002)(5660300002)(44832011)(7416002)(36756003)(2906002)(4744005)(86362001)(4326008)(6916009)(66476007)(66556008)(316002)(66946007)(38100700002)(41300700001)(2616005)(6512007)(6506007)(186003)(6486002)(6666004);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?VCJicqu7AGMnyH+n0y89PV//lqnIyg2oIH31JjvLop9R3SvoUXbU49mHN88m?=
 =?us-ascii?Q?6tzBPQ8VCS036IQt+QGEff2xvtAHCoA0w2BeyXjRtVhVm6dgnXnJmWIQUU0p?=
 =?us-ascii?Q?0QKSZV9yPq7/O3lPzvgiOKJAiLim4mjf0K2KTHLyRQ2eFwgCJa/YN4zAQv/B?=
 =?us-ascii?Q?NqmGSGQJmCo7x87mBaSGt2aSUlgVksr/P2vc4ix3HULxS/lFBjf8L5tl5Mcn?=
 =?us-ascii?Q?SWKZPf21NtcGchrrrIaPP42zIPSzBJyyLjqx/Fizj88UC85SnwT1+PwUM3nd?=
 =?us-ascii?Q?ZSsH8DAu+cEfagufuOyZ6BGInLqVMVt2CyP7hc2X1w8mU99OU8Mztw7RzSgh?=
 =?us-ascii?Q?f1tCYeIh32rDTjEGibCGRm/l+AvSRec5W+BcjHLKVmI0ZxWjhE75+K/emuNk?=
 =?us-ascii?Q?Nk9RrvBJI85qRFtKr6YqZgCCctNt1AMKI+bcAyUlBzzkwLab48L1L/lxgADm?=
 =?us-ascii?Q?JPEWIYhk0ckts1ea8qdTglA3FIbHk+T/vJGT59qap5U9WlMGYNKTIokgvyL7?=
 =?us-ascii?Q?6mN9A/nmUyOjVJWHrjDnf4ocQsCcEwSXbytPBQVsG1IUdvostlY5KW/Oeckn?=
 =?us-ascii?Q?PMDPiXndsNb+GKveUFW/FdrRYMYS8YmWpb/vpnt2QNcwxNYieS7z5Br4ijIp?=
 =?us-ascii?Q?WAe9BKIjryijyn3nmxIC5UQIAqrd+xN+h0Lwn/Ln/jFAoT1qZ/iVgrHiwI99?=
 =?us-ascii?Q?roDi+t4LN5hDcdzz2bW+2TbupzGS4W8QIi1iJZeh4GsCkBRPHl6sT17bdc7f?=
 =?us-ascii?Q?m2SyIIBibeZ00DVUZ6dJ3cdAgGrd69afb0L4GMJZCwlF5O4iMUM/zkaGIPcO?=
 =?us-ascii?Q?BvW8IJI3MKhyBA/uJ7guV3i0xv+gcwMw020EXWLz5gFKEb2HJ4Nk+gC+abXR?=
 =?us-ascii?Q?CaadBlP4KHEl3QGggdhaKBLH4c4R5EnySxgvBJ4t6yN7LtHOK1TcI+UfbCaH?=
 =?us-ascii?Q?WIRcWVHP6DQVZ2uWmce83ylbj/Bm4C3UQeyD/ZtvbLsftnPCi5u0GlljTXLN?=
 =?us-ascii?Q?tRyrJCUoEOxMuAG1Y8ZjhG/cKwWG772VtgeoFWZRAhosL5XGBR5L7NxXGdB3?=
 =?us-ascii?Q?42Mpzd7+f77m7E8KDHU+l2E8KugahBkStu73Mopk3ILKzFiRo4aEID2EnRyf?=
 =?us-ascii?Q?jc8g91cY8PvU4OCDgIeuUplflCqPLzaaO3JpQCWz7EP7E/kimGl5wXprG0ij?=
 =?us-ascii?Q?jq+1loU3yhmwakUhsAdzF9jetpaayX0LPRA4YtxW/WytWwT58Cpogw40qYgV?=
 =?us-ascii?Q?iLNk2hSDwRK3TkQr/DEVS0K5vp8RdMHiRaawnsgxemBWYgOfng1NYybOgzfc?=
 =?us-ascii?Q?4ruDPZ1MEuE7ai4OdhwdUJFpdEU9RVVfCQePq3GzrS23KXIK9Hjchu9Z5uoM?=
 =?us-ascii?Q?eGLCORp5MjvV+UEtrTIo7KEuc2UXNala2xlMR723nlf8UOQCxrDRLzzgklXQ?=
 =?us-ascii?Q?RXwmet0HN9ah191cg9pIsrJtyOG0IbR4zl5A5of56p5wAhIF7xEx9M7TZM08?=
 =?us-ascii?Q?sTJsu3e5QpJVeScux+/l08+aB3RvReJuBqEFHgyPdFBzqC2Otjy5Kn/MI0n1?=
 =?us-ascii?Q?3AZwImv+F1KGY1ibYelpGTMZJmLRJw1y+fsbuUuW+olOONqZ2bS9/M9E/iD5?=
 =?us-ascii?Q?oZRs/4vRIgHhe5OGrLmv6BMiOEnRGOMyw1edVAdxiOJpYEfCeD4UA+157VxI?=
 =?us-ascii?Q?7hTpzw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7aec3d46-95f8-4965-8691-08db65a896fb
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jun 2023 09:38:16.6471 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: skGJTn79ua/M8xrNReeIT4MP8fxhqzLbOtWj+IhuK26fyO/f21JHFu5pSedStdgc9CAtUe9sZxUP1nmOpL/Tq8m0DvWujMz5mMuLkF2nfLE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR13MB4940
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=l0U7Dphp26dWA959vN6DKBXwoQzDyKw3TfXGeNTovJE=;
 b=SUwTm+uAr5xBcG+G4LBZcarYo7+nCWlhK3Dq8MZY6BzEe+DydNPEl9hx0ErU4EhmAv499yw3h6IrhdJjIHjO1SYgacLlUWgx+K4nHlyNsr2Qw81Bg4SC3geMbW67g+FEwJvsG1f31voFzSSHNbCfORs8SyMHDxkCFakE2I9jly8=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=SUwTm+uA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [RFC PATCH iwl-next 6/6] ice: Add support for
 PFCP hardware offload in switchdev
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

On Thu, Jun 01, 2023 at 03:19:29PM +0200, Marcin Szycik wrote:
> Add support for creating PFCP filters in switchdev mode. Add support
> for parsing PFCP-specific tc options: S flag and SEID.
> 
> To create a PFCP filter, a special netdev must be created and passed
> to tc command:
> 
> ip link add pfcp0 type pfcp
> tc filter add dev eth0 ingress prio 1 flower pfcp_opts \
> 1:123/ff:fffffffffffffff0 skip_hw action mirred egress redirect dev pfcp0
> 
> Changes in iproute2 are required to be able to add the pfcp netdev and use
> pfcp_opts in tc.
> 
> ICE COMMS package is required to create a filter as it contains PFCP
> profiles.
> 
> Signed-off-by: Marcin Szycik <marcin.szycik@linux.intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
