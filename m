Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E1BD7D5823
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 18:25:40 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 0C150433B2;
	Tue, 24 Oct 2023 16:25:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 0C150433B2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698164739;
	bh=P7jNuVE8MWm0FpKjV4TaFE0yyWoF/yDx0l5gOtVnNh4=;
	h=Date:From:To:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zwx2Q0Bcdj+lTw5UiFbeVDS1eMpobnOGUAeQy7ekVu/vb1L9WT44Ku3RZoUBWHhmC
	 c5+BbleCEKDOy9IarJSvimIpR17V+mMdnTWnA8gk7mF7sfpK2tlPIgbH+PVVPqmUlv
	 9pBTES38bcIB95DxquLawYT7BmxIno2PvL2mcg22/c9SXWPD9yKy19H2ZObC0Ps7ed
	 H+jbiJgd4PVk4PjTs5gVPc/st44/tcnXhAmwaDe00IYV8xDGa/2HiZrVZlQDp7cogh
	 VlpVrI2/SZkeLvpE9n7APTUrYzQ1V4A5Tas6lxOLLpTGIRe46DwhOvkk+qWv1/vSh7
	 y+Gw/cNK6+DfQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id G-El_DZ90gqZ; Tue, 24 Oct 2023 16:25:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A605542F04;
	Tue, 24 Oct 2023 16:25:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A605542F04
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 068911BF3F7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 16:25:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id CD8B8848D5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 16:25:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org CD8B8848D5
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id O0LUNSIcf_Cl for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 16:25:31 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.136])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0402B848D1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 16:25:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0402B848D1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="366446092"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="366446092"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 09:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="1089910778"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="1089910778"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmsmga005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 09:24:27 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 09:24:26 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 24 Oct 2023 09:24:26 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 09:24:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=e+WXoTj1SYLUZmrOYJPGIqtgwN5RBS8k5uyuM/mQ0ihtcndls1aqrqQ8kyBPlB9aeFDIFHdhISeTrfhSzXYusl/bzGEIsUAbfgZ2zmsplt5UhY3NPVQ17R6LXKH3ayO5BwKuBsf/c6cYF5nWfjAtRn0YKPiRICNo5tDSdlyjp0Z8dJm8rF99mEM3FKnNYgy6bnQMcTOeFYg/p4OFtBgrhafuUNtkgr9RFBXF7d9lBGwbCijMMVyW4+ZIkGfMNnoEuiUom26cSfOWgU9rY0u8rGrTioUcPHf6cgFV83uJEpIv1Dv9Zdux9XosN2MkBoDWSyE52cVDtqammQUj9arV7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KvbesJjSi7Rf6+/wWJdh96AyBUl7ppKMekCcH6QqK1s=;
 b=WmbfrJWGfsaReGQUg3BgYX1v8YrbuA2Mtlqb0v3uDE5Ji8MweQHKsqmjZiGkoPqsnqZqiW+uUiJ8Rldp0ftdJY/Dl8Hsdt6h6+TipQvd77u3QH7tQwsEudku4uXqv8AtJljY5kpB/tIYdHMAyVYgueXF8cmLHYf6NFpmtPWpEW5UQ7+jkYhCBSnwJsE5rWo/LtYHpV11I6N9N5gm4Wb6vnblePIUosVaprwYDtDsALoKdrP747JFnrclLopFOanAh9UjrR0IHuc5W9yjAQvqhYKdVC/LdUPu/GbkJsB/XOXmdB8JUzhRN/UDi0HQ4fx11ClXwFbsksmeqabwS0QRxA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB6748.namprd11.prod.outlook.com (2603:10b6:510:1b6::8)
 by DS0PR11MB7409.namprd11.prod.outlook.com (2603:10b6:8:153::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Tue, 24 Oct
 2023 16:24:23 +0000
Received: from PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::b4f5:b3a6:21cb:453]) by PH7PR11MB6748.namprd11.prod.outlook.com
 ([fe80::b4f5:b3a6:21cb:453%7]) with mapi id 15.20.6907.032; Tue, 24 Oct 2023
 16:24:23 +0000
Date: Tue, 24 Oct 2023 18:21:45 +0200
From: Pawel Chmielewski <pawel.chmielewski@intel.com>
To: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Message-ID: <ZTfvGYgvTpJJDbZ3@baltimore>
References: <20231024112912.1811594-1-pawel.chmielewski@intel.com>
 <ZTfC1u4BxG55rZ6o@wasp>
Content-Disposition: inline
In-Reply-To: <ZTfC1u4BxG55rZ6o@wasp>
X-ClientProxiedBy: FR0P281CA0210.DEUP281.PROD.OUTLOOK.COM
 (2603:10a6:d10:ad::14) To PH7PR11MB6748.namprd11.prod.outlook.com
 (2603:10b6:510:1b6::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB6748:EE_|DS0PR11MB7409:EE_
X-MS-Office365-Filtering-Correlation-Id: 8a1e1579-b672-4a52-7258-08dbd4adaf01
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: IoAZt8G79lSvcN4Oz0yDGraFTjasK5oGk9Iv7RZBJC8h+hT7dyjDSoBP4MYrD7glMG5UvW5gpsRbD4NBku1wR8K2kVrucWM4ZJ/Te3sd+GpS3gCrOIe1hYfl42Zh7T4j5e3Nm7ofbKAP7RgHpM3ewTb+TgqqI/b+fLpwE/GROtfethzqldEJ2Q/bouBiYxHHvQR6H5QwB3CvmJ/eZsel25xgqk4zMH95noElIlhSpSk1eDLUyqOZNF+tMxG/u/8c56wN+SDdPFYFNrQ31hWb4WtNJjaoi7URksZOV5oLPnznOsW6hYLtq8TsBJ6utKCQ1gbmOm6GbkFeM8L+p8EBj9cjejAWKIQpw+hfctpjzO5qNORhdhgc5JKZu0oKnin/fLMA8d28cZe/PV/0eyW4jKuLlRmBTfFEL5GWBDsZ7zBxfh77Rn287sxybHlmWasJwrYwTIKrfo+IJGjHpRFqGTItRpsh+pTemo558IUTzSzjKXXe3ZrSP2/hiJ2Emum0Djfjxs78rCXmKe03qxklkASma++z0+ljnV5aETTtCZIqc/eTjVmWMItyH1pyltGy
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB6748.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(136003)(346002)(376002)(39860400002)(366004)(230922051799003)(1800799009)(451199024)(186009)(64100799003)(5660300002)(44832011)(6506007)(83380400001)(41300700001)(4326008)(4744005)(8676002)(2906002)(26005)(9686003)(8936002)(38100700002)(6512007)(6666004)(33716001)(86362001)(66476007)(82960400001)(478600001)(66556008)(6486002)(6916009)(66946007)(316002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?7C4iWbFtYLRBZrYA3bq1hlEU7yrH3Wh9vZ0h0RJrZdL+0Qdrl30V70R8JkT6?=
 =?us-ascii?Q?ZRNbR0gM1Ft6QawUiHdf/6OZWMKkJmPbujvbnvQWIFFgSXboCB36XL1NON48?=
 =?us-ascii?Q?GwDdvpGOVt6WVu2pDJ+BXJURHJt2juVa5UX7BQ4PtqSsELr3L6AehkeNdR7R?=
 =?us-ascii?Q?yFAeIGfzIr8nC97WhLCxGNQ/J4GESDrKEe+rR6I0gXneMgNeKtFp1tlbiExq?=
 =?us-ascii?Q?q3XiSQlLxAQMipKFSXq7xmlYO8SxQ/Lj8Vds1uPtSbM+TwlYL4FxliXdqhP+?=
 =?us-ascii?Q?A0B4ZO0xkP4Z4Ivc1lfoEYm10ylQT0tNFU3/8Eim2ujQNvAkXT3bZk/bYtdP?=
 =?us-ascii?Q?U5hyy0B8S7Bj+t0jtlSqyYjddrEZ8JHsICHpSme6tTrzXxr1APpz/uwCtxJT?=
 =?us-ascii?Q?9sfj18l5dWHI+V41IcilJ7LQnRSYfUbozN3/zPVukfh7HEcPp4MjZeuy2/QI?=
 =?us-ascii?Q?QMkGywzNjc5I1kYLGwx90GDPbxTb2nDcZa01xvxtfVBU3GP8G4A6r1VYUG1t?=
 =?us-ascii?Q?XPNPX0uE28RxtxA03rIBydD5FD7QTVCKjF6WpHMS4mAOzz9bMBTGcG03ixjt?=
 =?us-ascii?Q?xEB+S42j/v+p/+z/MkFP6jdZCbCAjc1spTgDZhmFZ39f1my505GnygpXCYes?=
 =?us-ascii?Q?OdFDEoljETuXgiMs7RnEamnooph1ku4oVzpz1+ZvgdxN2HxVGyKFfObGwLpV?=
 =?us-ascii?Q?nNvLXCUokmJUbddORP1heWWuSfh9aGC/1QCPscG0KabjnFl5GQ21D+Kfl9fC?=
 =?us-ascii?Q?HWarERegXXM3OPyQftjbxKUc83J7jsnR3mE+nTLVkT1fPAxz/HJKTLGmkvpv?=
 =?us-ascii?Q?n+mbozdgFl74zQUKtK9Ii06M3sswU03qB3wAAr8iNyvYdkz7WNX/o9TEIzJY?=
 =?us-ascii?Q?9u2PhpYoNQlx3+oq4kwwjur1Dpo5Qq1ow0MI7UwaD7tp0Qc7ql0h0M8utvcL?=
 =?us-ascii?Q?xlSO3ukJZ9H16A+Yjn/dtz+QZtgRHO2No1Yimy4SxYMMHUJMFtGYkENnTqoH?=
 =?us-ascii?Q?6OrYKGbIA+VSx+hAbgCy5tu8QSCrKnNbZW2SSh24K/WH1ayTM3n6hE8Vm8lS?=
 =?us-ascii?Q?s7gxhX13kCIB6Iij/8iWtRwueGVa4TAaTzyvvVE9i9E3GddSXHMOACQRhrk4?=
 =?us-ascii?Q?ByvuALA0EApK3AMHTcAdkfkCKiQgcQAqPgPwybzHj0NzxOtyxZQXNnjKGhIy?=
 =?us-ascii?Q?okYU1oKCY4l4XuQBUQBv8e6g+EZ7ANpIj2jH0+eYVp0VCEoCxmYqhsBXMWi+?=
 =?us-ascii?Q?UAvcwH7/uEyOkCQCnLZVi44u2ADcDUXTjhNR1tZAwp8wGW2++ZWSEg/wl14P?=
 =?us-ascii?Q?6gsN+sG4BDz7OvQ1N6JMSyG8ODclkZzL1dgK3w+YE5+M3MwQfPXTNJJf5/e/?=
 =?us-ascii?Q?gHxi2Ev+0tDM5D2ZbL/9hb8YnSp3ny0RLnoOUzsRUMiV/pBvpMWBzTWi/m+r?=
 =?us-ascii?Q?H49/+QN3GcrwFGVUuBHfSqzrE6KlUxYLlIoyRnvMiLMc/H4kR3Q2AhXSaG7F?=
 =?us-ascii?Q?NJaVWNcJ2MZj7cSwH8Mky0EuH/TQQkDuQa+5VqD2iukmBBLWWjFOuYeCFJA0?=
 =?us-ascii?Q?b/Azx6Spv9hNJE5T6h6EwyVpLBs+bGay2vSd1kpCQNy8Jd24gb8xYr1cAaii?=
 =?us-ascii?Q?6A=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8a1e1579-b672-4a52-7258-08dbd4adaf01
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB6748.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2023 16:24:23.5180 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: cGmmdU/moTqoKyt+ALyxoe5TP3MTosn7hzu9VGmhPY3E6vp0fxMN7MDDZOKBswtTYb/FFe/V7oLq2yWS1BIfat/9g+Yus8hdtmXmlv9K/zw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB7409
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698164731; x=1729700731;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=L4vcANQ6QSaQcThz9tjguoBY5WjKSNq4dlz816ifjW8=;
 b=Nqcxi6liEszDFGSpkWOByqkL9qg5FnlN6ZTCT4wi0L/dbGLLzAH6QKr8
 LcvZ5dYlhQvpx9AhranDe76ZdE0+A3oASgZqXNu5Eptv3JavPYvkR0TyS
 2S8KGBe3m01sQT51UvSQxpNeUtHw8g0kpfRwvF0Kh0xpV0YI0jAiSaX8k
 SLvf+cMz4ZrCBm7km9x6w4LhnzVo24aYoGb6vL24EIspnKTu69O/TDnX/
 n5QuhpvhN4bQx/h7HrmVFVTNqS0UA3mnixqAFhxyzmDMF4HkUHfxsz+zF
 RGFv3Hk/rBCNpKCiOGbvWeBX2DjViy0ecNF+uof9uuTuVy60xoaxbmgLu
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Nqcxi6li
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: Reset VF on Tx MDD event
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
Cc: lukasz.czapnik@intel.com, intel-wired-lan@lists.osuosl.org, Liang-min
 Wang <liang-min.wang@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On Tue, Oct 24, 2023 at 03:12:54PM +0200, Michal Swiatkowski wrote:
> >  			if (netif_msg_tx_err(pf))
> > -				dev_info(dev, "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
> > +				dev_info(dev,
> > +					 "Malicious Driver Detection event TX_TDPU detected on VF %d\n",
> >  					 vf->vf_id);
> > +			dev_info(dev,
> > +				 "PF-to-VF reset on VF %d due to Tx MDD TX_TCLAN event\n",
> > +				 vf->vf_id);
> You forgot to change TX_TCLAN to TX_TDPU.
 
Thank you for noticing, I've overlooked that. Will fix in v2
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
