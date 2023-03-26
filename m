Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C317A6C9481
	for <lists+intel-wired-lan@lfdr.de>; Sun, 26 Mar 2023 15:35:12 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5640060B58;
	Sun, 26 Mar 2023 13:35:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5640060B58
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1679837711;
	bh=r0NcqKAiYuXp5vLFNj73Bfgzlwi351oxvnQm+z2ANiQ=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lo39Wp3LxPbl0lMeiqQySkHqTc9+ZFjBPGdWvxFNmki7kTh4nGOhkhh4btQgVztEQ
	 5UuPV7l+rMOfQEbM8alDy0NmuW87DytohL04kuz0USqSUHGlelCdmvdcJ782LusWIr
	 XfW8a/4qSaabGFkSGeZcOFDYncBwqoWp0p3ST2TodMooc5vmjESOTLTJDDuTCKGhYg
	 v1Au8VtA7t9kxsDpkb6lC2kGhSZbQosFjtxyqbJlGq0zG3gxA2Wcf/t4yo+OBNaUei
	 r/dPVHMa96OnsPM2gfBUzdUFwkF5JjNWnnu4Sbx+8LY9vBEmPsIpUKp/MLtdOk0N/s
	 WSAOhOD2yHdLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XtOhpcfxyp7v; Sun, 26 Mar 2023 13:35:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 603F860A9D;
	Sun, 26 Mar 2023 13:35:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 603F860A9D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1A04C1BF578
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id F2590405C2
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org F2590405C2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YBZl3m3XYj7E for <intel-wired-lan@lists.osuosl.org>;
 Sun, 26 Mar 2023 13:35:04 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3A04C400C8
Received: from NAM10-BN7-obe.outbound.protection.outlook.com
 (mail-bn7nam10on2096.outbound.protection.outlook.com [40.107.92.96])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3A04C400C8
 for <intel-wired-lan@lists.osuosl.org>; Sun, 26 Mar 2023 13:35:04 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i6F7F3SQCQZeTR1A5iJdlQchSC49hgtgtasgSKTfb733XrpOQrXnUdVr2QLlls6mzQ7WO8rkjoTx9DgLOkHrbJJ8u397/DrOx8u1IlC1Dn5TvQLHN/C1hAvcnNyFYpVji0ZqgdmiOaCMlvEJxRWNattg1eUb6/lTLO+y8/+8k/4GJVDQHGTAavHTQraoK+Vvd4q2qVIC9cWMhzOpYJVWkAqVjU8VAkJObodNnV5G14qgUBS3fj1HRlc8M8EaR+v0SjMmVDwQmoQKd+k2uE9m33/MSX2mRT8cWxNauHrqy2tXgymK9gjWl3v04IeMdCV3dwNXMmxycZldHwHtfZpekw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=EHaZaFWpORU9k1W0gpCccYzR5j6yQPeEUwjQaXLJdPw=;
 b=DwLx8AtmavC9xLzGgJj6Ww6cz/FcawoAWggxt8QWMJkRkJnH04f6ZpF31zkdgkGVk6OY61B6n0Q6Axd7Rhxq731PN6CR0V592ubOH2dgifq82D/eA2WDoeIC/GC4gR3sWTARCFTuS0FBy97DBYE+EEhTelEwrdTr4S6bY9moS7Nng0svPAwh4XwXoiFmEYtjP82ZaWj9zdhdW0IVVSHqVM8meU1Xq4vXwGaYaClKWbd5QABj4yfZTHncSPuItvk8B9Vin9Am290EPSaxJWKXIm12xktJmRzQMuH/Tq5bRNZzEfnbzXQYfDM8jOYIG/639GbAIXHB30NzO1zg29Gzmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by CH2PR13MB4428.namprd13.prod.outlook.com (2603:10b6:610:65::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.41; Sun, 26 Mar
 2023 13:35:01 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::c506:5243:557e:82cb%4]) with mapi id 15.20.6222.028; Sun, 26 Mar 2023
 13:35:01 +0000
Date: Sun, 26 Mar 2023 15:34:55 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Piotr Raczynski <piotr.raczynski@intel.com>
Message-ID: <ZCBJ/3bpHPFyY9WN@corigine.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-2-piotr.raczynski@intel.com>
Content-Disposition: inline
In-Reply-To: <20230323122440.3419214-2-piotr.raczynski@intel.com>
X-ClientProxiedBy: AM0PR02CA0030.eurprd02.prod.outlook.com
 (2603:10a6:208:3e::43) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|CH2PR13MB4428:EE_
X-MS-Office365-Filtering-Correlation-Id: 062f9ca8-d259-499d-c092-08db2dfee673
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: rj+gYOhmklrIF6wtLX0Trehz13eAcjkpGwwTypytMpkFEgyHMjCIhm10HKCGcye7M2TljZbx48AgFQnOw4KN/0P06/+/YYZbjrv1a4gosugPX88eZuxLf0Mi55raPhCFeSrIQzug3vwWeZatoQzEdEXBGqoF+IJsNDVE+4lpp0MEaFGHFwRq4RZ7hARH/mjpppat3IE3mqeS5F0Y2Ht0CT+A6o1vVxNOqSAu5DBzve+vFwvsozqIb8T+GFAOvGkdMZwnQ69odIokScGtcxAA+BFMWVPjwXy+JlS8Wrabf56thF0ONftQ96845mbb4LJ9RlZsm0Tgv034vOWuASpHQbqmUqGdgpeQAALyHnojhRETceuR2hx/Dsc1x7SYJzfIzUwbf2XQEDP4OIuu4BUGMv8PXgGwj9z55vAC1pcgRl4hGTGmBJyDVX4B3tDFBt1ctgZeTfhckxTLIGXYU2saqZaAW5dVNQG1RxW+8pzfYYvTnpz9r8so9ssI6aXp7egih3eST86dgAsvPeBQeKMJw50iz/abItOZXY3toNXE+MpcVYsaAMaMGqSuImtiKHxg
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(136003)(376002)(366004)(39830400003)(346002)(451199021)(186003)(6486002)(316002)(6506007)(6512007)(6916009)(4326008)(66476007)(66946007)(8676002)(66556008)(41300700001)(478600001)(6666004)(2616005)(4744005)(8936002)(5660300002)(7416002)(44832011)(2906002)(86362001)(38100700002)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?4312hXXmQx5Fj9OnALBS70Sf+9TXgLHs8tWSolYX25vZenxIjRRHWaBFAh5O?=
 =?us-ascii?Q?8zun9RPq3YPK6ZxQ49K5nRtmKKu4vkHxUFE1Jl1XdWpqn/6BZlMJA+osABVu?=
 =?us-ascii?Q?vCdU5dh0aeH6V1po3zMh1SdYOC2qdltd7rsRgaRdgruwt7KkNRbA5zsTF6T+?=
 =?us-ascii?Q?QRzQeYZxNxF8wwUzmZxRBvDVGVfVCFO/YxCvNNvoglYRFYAiem5oyf2rxTMk?=
 =?us-ascii?Q?Ic53DZbSzd+375emipgnOEMP+94uZ85We4Y8EHic7Xdlkptax5Latdzz+rXw?=
 =?us-ascii?Q?URKorZ1s4VkEWEbi0cRqkkDjVfoX9EE6LrQdWj1jpui1AThOuhdjgwUmhdYb?=
 =?us-ascii?Q?PX3Jh6A91EsSOn5v+0CucSpObR2ee9/yrLknoa4FdKsBjRutU1g3dNO8Wjoh?=
 =?us-ascii?Q?STE0OSLwDmiAI99Z7YU+wwZUV7azfwdebE7l06IMrCuMBtJxuOY8IkpoltAe?=
 =?us-ascii?Q?yEqTSSSr1CcbyPKIECgGc8/6eJlySPotmBx80vPQ0GR6pxViiYAitCBebzU/?=
 =?us-ascii?Q?gjqBradn8PPKyMipCQX9VUQhqk7V3DQt+B/FyMHT9hHQY0EbFHX5rr5jeQCa?=
 =?us-ascii?Q?w1H1cLp/eyB2xmWNGRuJW0oG103rNwDtcUUxYIGeGXf8ljxYA6LjxG3I0O9z?=
 =?us-ascii?Q?gPL2mKRcq3IyDebBv5ynEmqO4z8gnz0yb8UhbMGrXlFBPJ2JJPgovlrL5T1N?=
 =?us-ascii?Q?pn/mfrtp1NNJgPejC/KYnvBKH7xD503ouNj2515MwEIW3aFNaCnl+coZB1ac?=
 =?us-ascii?Q?NF3hzUaNdQ5kRG/49QOId3LXwGbCcB2jKMXhvZpPoRXSRdMAMYTnGTm2Sv+y?=
 =?us-ascii?Q?EcZJZoegF2nCDPKtbrGn6UO2LqaON/z8O7hf5EbdV+lRYVzV+KpGjYcoSt8R?=
 =?us-ascii?Q?9sis+tdJJyEFTXX06Cgq29vFLD0jV9e/w7xdRrSXxTKnPDOSowIdW+sZ4l/m?=
 =?us-ascii?Q?fDKb2MjkN+QtSA0RV2/j6Jf/lBML1AhsWPFYssv2yGCJ1NocgX9cqChVklgm?=
 =?us-ascii?Q?fgLm2L1ESzcPCHCoEjJxifUBkZGXra+CWVMM9b61J6UZRfcTOKRLd5KEEiWT?=
 =?us-ascii?Q?8GPOmMUfvZ1TmcSGqRn4Olb3mJm12WIb5usB1iMYj3y1QUOafDmFP/9I1LdY?=
 =?us-ascii?Q?koJeSxVF4mw11pD6/t/Z2z2pmq+mLcUxeiBxOK6RY2R7Txhkza/dQ1DDdirQ?=
 =?us-ascii?Q?NRfCsc+/GQVUL2IRcjCIwvxmeKZgRk+pctLMSW2znRK1mVpQ8/II8JsmBb7q?=
 =?us-ascii?Q?zKEQF5s00ZI0X0S1WCp2xPactoBmTS2P08CsDMoV5b+DnZv1KDL0g2+0N5XO?=
 =?us-ascii?Q?qU7zcU3zIzoCj4pEu8sz7FErf9oaODRLFODrIzXPfO0CfyoF87l0pnXX5Uus?=
 =?us-ascii?Q?OExcUvc2jQ4xhls3oOMp5Wto4ZxtRPcU6vmYLMM4fL+FaOvNlVe2iBH8WX+N?=
 =?us-ascii?Q?HYkyzoxVo9kRTTcKUSPvaeYRDqIanAn1/7YofLtOqQh9/rM6YWQpNs/muiVE?=
 =?us-ascii?Q?txGTi/ICZI+mIKVVMPKFrg0ExJN6p+RanS9RHlUmbA5/dckd8e/TMm8nbx7u?=
 =?us-ascii?Q?+3z6FK5YtVR8OZoH80lUzsCNaeLIVoahaNAHmUZF9ZWKg9UJa0doPB6IOPi5?=
 =?us-ascii?Q?mHpWVmbWF7IWFKEyPgmKOv5ntqdmCSM6BYPhfezrvTRen7j/qZpJBfgGlr2O?=
 =?us-ascii?Q?gBR4lw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 062f9ca8-d259-499d-c092-08db2dfee673
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 26 Mar 2023 13:35:01.6860 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9a2d4GP1HBXVS4JO3OEwkAyV8mTRRrkSv/YyQbEhzjTwp8Or/s5kQEoOEQX56Uv2qnBdOLobV/zB1VH+2xRUCmqcPpTi9Zzee3ifytznGm0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR13MB4428
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EHaZaFWpORU9k1W0gpCccYzR5j6yQPeEUwjQaXLJdPw=;
 b=aO1mY5c/6tYXllPrqGUIjI2AY4ac/H8RtMJmHaG2kM9pHGBenRDg57utHXhTLCp8ySMxKM/xtxuPF+wAhslIj5QsPZ2FKgnW+Ss4X3vW8/h9lFkbU/pDFx/Nk7dD3UpphIVvIhmx0rR/J4ve9IPRLxXc7G1KoUXvaKNdW204uVo=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=aO1mY5c/
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 1/8] ice: move interrupt
 related code to separate file
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
Cc: michal.swiatkowski@intel.com, netdev@vger.kernel.org,
 jesse.brandeburg@intel.com, intel-wired-lan@lists.osuosl.org,
 shiraz.saleem@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Thu, Mar 23, 2023 at 01:24:33PM +0100, Piotr Raczynski wrote:
> Keep interrupt handling code in a dedicated file. This helps keep driver
> structured better and prepares for more functionality added to this file.
> 
> Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
