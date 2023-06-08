Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 119BD727CD2
	for <lists+intel-wired-lan@lfdr.de>; Thu,  8 Jun 2023 12:29:22 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A1F6A41F42;
	Thu,  8 Jun 2023 10:29:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A1F6A41F42
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686220160;
	bh=xpxUEoMsRr/48jWh5Qy00j2/JRWL8YdCT4nTWALuMnw=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=tHyC+O/bzsp76YDAUoHTb0d+VcPqXFpf56Fc+2b+CVtr8OWv2LaQPrNfJkNNEGmJD
	 QqcscUSjpOJ5MAFg75jJ4JKClx3Ii9gsG3sijecys2SBZYURLfB8Sr7W3Va7kPDNWA
	 Q36eNUaMEscNnmVp1h1bJBPFQc+li9srusbhdhA0a8j9WAlwlp5AGBVDsU4QiKWq3q
	 YkbQhZo+1sMOa7/VvvB+hWhRbsnGF7jI8d1h+QOINEvsR3TMA9Mo4aMH1i99wcv9Ml
	 AKosrnaN52wnMRUK9RFBcKCA/5K7qRnvqllDtpjKTMtSITLUiRbvjKV+A8xsJIxa9O
	 /71XVggsm/iLg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id NZ88poE5WoNZ; Thu,  8 Jun 2023 10:29:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2AB664157A;
	Thu,  8 Jun 2023 10:29:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2AB664157A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 690751BF3A8
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 10:29:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 40770402D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 10:29:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 40770402D7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2R31QSPpMPHy for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Jun 2023 10:29:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 85244400D7
Received: from NAM12-MW2-obe.outbound.protection.outlook.com
 (mail-mw2nam12on2132.outbound.protection.outlook.com [40.107.244.132])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 85244400D7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Jun 2023 10:29:12 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=W0XS4XfE/ac0pdOz6qzpIOLmP2aVV1cQQbD4wIpWuYSLhEpqPa35OenQZVjslsFlmEaCtn2AQd5kcIeSBai9mu3QZmAVmrATFTXAThVe76+vz7Ej1tTnhp4nF7FL2u/oNhEG/stoJUA7EsmxsiA/mPz5f7AvKoCN07e3O2Xnsbcv4jT0WXZl2yLieh7WLl3aeZ8pS8tqU1foOy2vAtaG2M9rL3vYnwqmU2HamAPTKaFl40toJ5pwps90ww/kM1DjrnIDqtGavzsBqGr6VV6MpxIQIKADupj197ByGQ4SCwGImMR+Ufz40WqAbl/h1ompwrso5Pinax1xK0KSV6jw3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=i/84SxeMLQGsmS0jmgdkcsOkxbQMqMi3uMe83yA775I=;
 b=QfgotYTAJ5az/6/Xl9syJ4Xxp0kAmKtFlL4nY0pssdk0/h1TIbTl9EuQL8DrW9xP4TNuFJMtg+uyQWDofuCkYHGikfBeRLsI9OWte1qtDM8oDEnb9EIo8/xTRj093x3oO7ngZBmzzW98brdITmwpfijDJduE1JhDWeGS9CUJktU0V+CWvGdsEdfCC8lzRfCKzbag0C4JJXWMe+xM1nV6WYssF8hmSn37w1fhX7h0HqYKKqwgKCp4f6dO1CVeUc5lUD/5v99T5Q1pkUcreLdpqW2YRaioa0QtIFLT6X6BUcZ80ADxBQkgSu9qrM68vDrXFFcqxWL/5DKr3YfGLsiofQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=corigine.com; dmarc=pass action=none header.from=corigine.com;
 dkim=pass header.d=corigine.com; arc=none
Received: from PH0PR13MB4842.namprd13.prod.outlook.com (2603:10b6:510:78::6)
 by SJ0PR13MB5428.namprd13.prod.outlook.com (2603:10b6:a03:421::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Thu, 8 Jun
 2023 10:29:10 +0000
Received: from PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e]) by PH0PR13MB4842.namprd13.prod.outlook.com
 ([fe80::eb8f:e482:76e0:fe6e%4]) with mapi id 15.20.6455.030; Thu, 8 Jun 2023
 10:29:09 +0000
Date: Thu, 8 Jun 2023 12:28:58 +0200
From: Simon Horman <simon.horman@corigine.com>
To: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Message-ID: <ZIGtaoFbvttiFD1r@corigine.com>
References: <20230607130957.115573-1-przemyslaw.kitszel@intel.com>
Content-Disposition: inline
In-Reply-To: <20230607130957.115573-1-przemyslaw.kitszel@intel.com>
X-ClientProxiedBy: AM0PR03CA0026.eurprd03.prod.outlook.com
 (2603:10a6:208:14::39) To PH0PR13MB4842.namprd13.prod.outlook.com
 (2603:10b6:510:78::6)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH0PR13MB4842:EE_|SJ0PR13MB5428:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d6ad5e3-ccf1-40cf-1cfa-08db680b321d
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: wySpXpM/tRgc5uWl/QpNQgVPOvtrOSl7wSBPAiD2wjhakwDiFnJ/pDiS2RIKoTQgdZMmjR8jV3iGas6c0d50IzcMpn4LHVXJzHFY85P550j9kRlx0iwbv5KIx/e8SE7RxFp8YmZpclg1/J77n61+S6KtLs8MVdMVpoVK9Z85NarmfhEc7T1TJDt0QH46iZ4hrZwniHMxrFH8saUoKZ0zcY8qsZUftjwVfKVh4p/PymkepBLACIeQMnDrWj3XKX+xm/DUfcjtXSaZaacMl3PwCR8m+N9omcEa61x9FlW+4LC41I6GSxPrX8vJpgsddRH7zluKgrguz/MRW5QCN+rTS+Bx8l83gQ4WavDnUNR5294/UUiA0JUxgMCKwVk20lRubIV2McnYpB/QBAYxRGQ42ccnXO35SVW3h8qjCFIiHHHBYTIMbT/+k3y6/dkN17gT3US/CxSnwuIhF19fNliAIAZvyXGWa2Vvwd0ey5EubfaGiC3mySot/bqHh5B+kc4iuMplVoGcwM1Gzw0wqwigFucb8vnWzavupO4s9brLlbxpV8A9MRsz2KdixK6qVxoZYXbKfpFs/A5fsT+aBVzWvO3nkFfaNR63MvaD00FRD+k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR13MB4842.namprd13.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(4636009)(396003)(376002)(39840400004)(366004)(346002)(136003)(451199021)(54906003)(5660300002)(44832011)(8936002)(8676002)(66946007)(478600001)(41300700001)(316002)(2906002)(4326008)(66476007)(6916009)(66556008)(6486002)(6506007)(6512007)(2616005)(186003)(6666004)(86362001)(83380400001)(36756003)(38100700002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?kVoNodNhB3khIjZBwlrRizaHi8tyhlhn7tqU2XRim8L8AL+w43F2D0Ip64k6?=
 =?us-ascii?Q?qnoq/NQcqt37ZNyz8AdM0ZfwtjpRQvP8R27HN25KpmBKWjf7GiOHPGaEXg7O?=
 =?us-ascii?Q?hKZlRN2gjGIaSxvp+aS+o4s4kyLEjTTSxWkf9+ncaKt8Q5nNqGp800zsPaPv?=
 =?us-ascii?Q?kvWYuJgAu1QyN+CvAgQoNoFNWf5VAy5yJ1qS5Rh1CY2qYagtTVOliMT1/tw5?=
 =?us-ascii?Q?/2QtOeCr5dpGuahjypBSrbg71G2zdDc13L+tCshI8v+Pk5pmWwrDuBahYyBj?=
 =?us-ascii?Q?cLxL4CpBwfpQZf6vZDtpUiSQ7/5tfeCa161HQ6T9vhfbd8wJ9+QYURRJlDKL?=
 =?us-ascii?Q?NEGlUcal//T+zc1sAr6VEgfkC94wuAcaF5BsmM72tgHhEG3Sul2YfV34ullZ?=
 =?us-ascii?Q?LYNkO+8X+Qaqn31OyrKwEkXuaN6QhCehPPrY4+8EIlQjHYfeSNLF6s0gck7u?=
 =?us-ascii?Q?Tf/crJxixZywm4JlWunW4lT5ABN4vKnZ2sfXoVT1HZZHlYMtdNi4Qucwc48s?=
 =?us-ascii?Q?FJzq+GvKpDURmdHjf+pVqslUTjSNAvvW/sgwsnyjFiOFUTqC6r+GclG9vTft?=
 =?us-ascii?Q?GRrQWM3ySjQIHDrbavlZliiV1QeewPslSzys2UPaOqO/d6GyUBiKb/0rTKpA?=
 =?us-ascii?Q?UkrpCGu/umi3Mmv5mmsJ7LNaqNLPeK/igvdR8fhKmFj5r3t6u6E9TLJBpkt9?=
 =?us-ascii?Q?74/MKi082fip6GBMC14RkVNs4cB5zu4cbJw3TODnaAxeiq5IxpnoqylBmNXP?=
 =?us-ascii?Q?jfkm0e5kcNFXCIc9AOUsW2rczsDJOko7ucBB4ap8p0q0gGsz3nor1fdE5E1J?=
 =?us-ascii?Q?LlZapU1/3MPC/gPA/mbsMoppgfYf6+AOlULQB2kq0RSVkN2P5EvP8czdLe6l?=
 =?us-ascii?Q?jFQj82/tcQiUmnCn7R6UPw4d9OSN8n0OoHjtPzNKunbmeJF4LVDek5HIKqak?=
 =?us-ascii?Q?Di90N4gA5i7yccduABWFxfJ+c/BBdj3FJIZsw/480VJuW9HpV0JbSXSMw983?=
 =?us-ascii?Q?bq8XuiRKapxTqxCDCvS6ifAG/MPBbSC0WBJzZ1qfPOuOn9TALCAvXRlGIOKe?=
 =?us-ascii?Q?2LHPVvKCrjPX4OBsb2dH9vRwutDmjoVn2SvslCDl6SUhI/dG+aiAU4t+obhb?=
 =?us-ascii?Q?6Chv16aVXnHJ3K7uEFtAAaFoeqk2BXKBqneTcLnpt3QN24QNuIGlefvPjk1b?=
 =?us-ascii?Q?QPuEFIsSfQSqbjnRyMDIE+4FkDhe94FtJYBYgK/UsdoJcwrJU/I8BccEq8Oq?=
 =?us-ascii?Q?WtnFz4coce8KKccgugZUxj6gvrFhmyO8ZmmtMhFZX7pgNqRtL4F064Z32K61?=
 =?us-ascii?Q?iL+ljGdHgnfkov1oly4wv2hrF5pOEnl5DzKzVhxCOXsO8Q69YrwmA+GdmMAH?=
 =?us-ascii?Q?1JLS5epl09mxWJScLpfHfD4hghMDgimbApMt1nzRNY7OmeAF4VN+rcuFWFaw?=
 =?us-ascii?Q?BrGWW7FwAktLOXSXOpFAqPKpHgouuQw+JrO7qAzeUICgF/91Uf+XL2/1j0J4?=
 =?us-ascii?Q?01Jt8+RDExAPev2gF4aQeTmKfoc8iaJSsi2Tf6iv4uSomMY8A+4bRbmyrscX?=
 =?us-ascii?Q?pMihiWMkAquiclYalu/KIxqOuX3dJxSuo7C7Mw6aQQ0HIHzufhvUdt0Wd/RL?=
 =?us-ascii?Q?wgNPGbCZEbtuhDb59y69NfH86CpRc2SZOSb3DBzlDFeqV2Gj5QtYERkTo4b+?=
 =?us-ascii?Q?H/93Qw=3D=3D?=
X-OriginatorOrg: corigine.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d6ad5e3-ccf1-40cf-1cfa-08db680b321d
X-MS-Exchange-CrossTenant-AuthSource: PH0PR13MB4842.namprd13.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2023 10:29:09.8643 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: fe128f2c-073b-4c20-818e-7246a585940c
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mZZ1FishnUguR2/QqqAu0z+HC7g3kKkWj2aK5mhCHOeVhKJy0IzVLAoPjj3SiMO9DH81Ya74thI6HIn+rTRfAHkmgJOqPCe4thiHKCn/g3w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR13MB5428
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=corigine.onmicrosoft.com; s=selector2-corigine-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=i/84SxeMLQGsmS0jmgdkcsOkxbQMqMi3uMe83yA775I=;
 b=vRV2T3AOVkmo57oJq5Grov2IiKZMlk1DFcDOT2IyHyPYOYoGFMLdFHE0MC2VSpiSzaUSyj6lTXOSg6DdPwAziBMpi3f7L0F8j/5ut5MDHJfVT3nZQC3U61v+Nr/NMiYEJesNRH+qcgMoaW0s7TMmL6ge1I99PUbtM+c5rVQXte4=
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (1024-bit key) header.d=corigine.onmicrosoft.com
 header.i=@corigine.onmicrosoft.com header.a=rsa-sha256
 header.s=selector2-corigine-onmicrosoft-com header.b=vRV2T3AO
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=corigine.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: clean up
 __ice_aq_get_set_rss_lut()
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
Cc: netdev@vger.kernel.org, Jesse Brandeburg <jesse.brandeburg@intel.com>,
 intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Wed, Jun 07, 2023 at 09:09:57AM -0400, Przemek Kitszel wrote:
> Refactor __ice_aq_get_set_rss_lut() to improve reader experience and limit
> misuse scenarios (undesired LUT size for given LUT type).
> 
> Allow only 3 RSS LUT type+size variants:
> PF LUT sized 2048, GLOBAL LUT sized 512, and VSI LUT sized 64, which were
> used on default flows prior to this commit.
> 
> Prior to the change, code was mixing the meaning of @params->lut_size and
> @params->lut_type, flag assigning logic was cryptic, while long defines
> made everything harder to follow.
> 
> Fix that by extracting some code out to separate helpers.
> Drop some of "shift by 0" statements that originated from Intel's
> internal HW documentation.
> 
> Drop some redundant VSI masks (since ice_is_vsi_valid() gives "valid" for
> up to 0x300 VSIs).
> 
> After sweeping all the defines out of struct ice_aqc_get_set_rss_lut,
> it fits into 7 lines.
> 
> Finally apply some cleanup to the callsite
> (use of the new enums, tmp var for lengthy bit extraction).
> 
> Note that flags for 128 and 64 sized VSI LUT are the same,
> and 64 is used everywhere in the code (updated to new enum here), it just
> happened that there was 128 in flag name.
> 
> __ice_aq_get_set_rss_key() uses the same VSI valid bit, make constant
> common for it and __ice_aq_get_set_rss_lut().
> 
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>

Reviewed-by: Simon Horman <simon.horman@corigine.com>

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
