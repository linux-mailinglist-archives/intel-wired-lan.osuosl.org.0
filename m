Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9706977F842
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Aug 2023 16:04:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2A63581EAC;
	Thu, 17 Aug 2023 14:04:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2A63581EAC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1692281078;
	bh=0QOZAdteoztx30GJjN7bHPrIdgeZAlQHZU8LagCKzIo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=cyTBQE6t5qPb8lDx4gg4pLp7QYJEhfDX4CvpEuPYZCyysbGyzQwq3m+Jzbo2IM+px
	 be8MBQabFlh7LNWQjJAQ71n29pkSuFitan9xloquiHSYkgWZkHUmukPPkRmatFihhB
	 ofP1yV9FsR+XSCUXGqGZnfCjmEkQAIXegWpm0SxhCfFo9uhSegXT/LO0Oq3Ycge8ur
	 iOwjxC/hl6CTqULpk0jF8Ca8fE1f4X67yU2K/8JcXEff49lVCF9AAdbaQl2zuTt/8D
	 THa8hLDNPPef548xPLTXZDTrw1CTxhBehKn35/gwLs61SwOAtp1lOpNCEBZq25hG7H
	 np01283oa8qag==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 1d3noqkE4EQE; Thu, 17 Aug 2023 14:04:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 068D881E89;
	Thu, 17 Aug 2023 14:04:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 068D881E89
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 5C3DA1BF3BC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:04:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 339936080A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:04:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 339936080A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id TUS2hnBZkx36 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Aug 2023 14:04:30 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id CD0BB60864
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Aug 2023 14:04:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CD0BB60864
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="403799278"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="403799278"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Aug 2023 07:04:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10805"; a="1065268980"
X-IronPort-AV: E=Sophos;i="6.01,180,1684825200"; d="scan'208";a="1065268980"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga005.fm.intel.com with ESMTP; 17 Aug 2023 07:04:25 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 17 Aug 2023 07:04:24 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 17 Aug 2023 07:04:24 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.176)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 17 Aug 2023 07:04:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OiwaBwwOx5QRJmiNKb7/TUGoITYUXob9m2vkjt9qmb+pkPVGqvIUUZQCDVW0OO/5DfVJTu+z8IC+d+xGi5PEIBY06h1x4nuIV0HZiB7w5iWPhns+A+qiN7CnGPJ/iNNzK+TV0DlGipjaLlaUYSH7LyLU98FThowIQ09QJXKKdlspWyW6ldWrLHgHYxspUDDB+Yyuo1dDnDIFILFkMpj11BsgpH+BXXN/vyWxSwWN5Kl5M8B2am84uCWsN2gGiSeT3+l1r7koBbxmHvy7q0ereUEMEXVeu+ddi4j7DnVs0t5XvdTYlxs5TPickYx9VOlSObaKO2u2ril3xHKccBLdkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Rw3epG2rr7GqM4fwv4sBBMFzNQ2NSAZUWkKs+d+xT5Q=;
 b=nrl23yP7q+FEbIRUiZYBsOJxa4kYevKp1xiseTekEYowKPnMKBXvHfmgwJtycxPIVn8gSJpV5OVwa6C7uNNrlR7F4AxJ76s/JbmgEQxr0fKZPmjEOyKhXEbSWyPzMMfoEroH+FBRmM4IbAVFhaECNX74L8m1aiG9WVGsDCMOJMJ86twjMiT41vpo5P7cGK2cJhtsGHvDzCaRjwueELTtZVrR2joRLvPzGuARigRJ0A5exH6uDSxBWPqnyffPdxKm27M6VfpHgqGn31hdHPLlp+2d7BqnnNMNijAOErRk9H9Ahb64peMxGdbV4WcE02LPrZNUw6feZMHbhsFbakh8uA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5800.namprd11.prod.outlook.com (2603:10b6:303:186::21)
 by DS0PR11MB6349.namprd11.prod.outlook.com (2603:10b6:8:ce::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6678.31; Thu, 17 Aug
 2023 14:04:19 +0000
Received: from MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::874e:6435:4a8a:3229]) by MW4PR11MB5800.namprd11.prod.outlook.com
 ([fe80::874e:6435:4a8a:3229%2]) with mapi id 15.20.6678.031; Thu, 17 Aug 2023
 14:04:19 +0000
From: "Kolacinski, Karol" <karol.kolacinski@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH 2/9] ice: introduce PTP state machine
Thread-Index: AQHZyRsSpVCZ+d5MSUG+RqPv76XL5q/erdUAgA/lTro=
Date: Thu, 17 Aug 2023 14:04:19 +0000
Message-ID: <MW4PR11MB58007C058AAAD9C877FF45F7861AA@MW4PR11MB5800.namprd11.prod.outlook.com>
References: <20230807103624.468230-1-karol.kolacinski@intel.com>
 <20230807103624.468230-3-karol.kolacinski@intel.com>
 <45567907-afad-635c-73d9-95860beefcf3@intel.com>
In-Reply-To: <45567907-afad-635c-73d9-95860beefcf3@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: pl-PL
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
msip_labels: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5800:EE_|DS0PR11MB6349:EE_
x-ms-office365-filtering-correlation-id: 66e4cf93-e25e-4339-dcd3-08db9f2ad9d8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: GT5nC5K0gDq2Ye7UWsEuWgbvSC1TkepVdQKh5j3lC4foMH/7nW9uMECwCWYzDsncAIosLRGyfRMqybytli8ku989ofCoMdbkzicJso0Gh/K95kZd+Pj0B9hQuGDq/g1P8/LGi9mhWpv1D5QJKjuhyaSpadHhgkKnGw6WU2T3d+CKFISt4JktAxsA5x/m/Oa3x1AdodmPiFh1K1QqaxOZNi1G/JEkENrqT4pBj3tSBtoKOj4hrKXzrCHw8DhZ1Nof71oMkIUyP1HUOWiTqFan4sdn9vUmAgtJ6r9paqdtKqIAA0ksxy9BYiWI1k/kFHVf9B19OSzV8CtAv4h47buSFxXCwqRa5t3AkkTnzI+Gpt55pP7+ja758glhvd0xyKKqixJffPrpCDyC+PC1GbBvGLvYtqxkGmVZX/jouz8CoVhxDkrU7frrT7HrSUBRg45TPlHs7LfFtiyln7DFNLdSW5+iZEG0gMI8Q5NR/+5HXPMqI/reBbNJt8BhGactNEhvXvoQSjVPuWxq+4FPkeKqTbO5/zzG8diVEb8sqGy20sBnGSbS6cjepj5FGmYLUClA88/VCOjJTZe0ZBey3VYJjRUqT1mfsDtecAPiHCpXVjAjgTPeUvNTohOlEJkC7YOQ
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5800.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(346002)(366004)(376002)(396003)(39860400002)(451199024)(186009)(1800799009)(86362001)(33656002)(122000001)(82960400001)(38070700005)(38100700002)(55016003)(478600001)(5660300002)(91956017)(110136005)(52536014)(66476007)(76116006)(6506007)(66556008)(66446008)(66946007)(316002)(71200400001)(26005)(7696005)(53546011)(64756008)(9686003)(8676002)(41300700001)(8936002)(4744005)(2906002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?mBT+wkS5z7uqA15QcROtyr3RNFdeJsArxNDRBi/D2tHxxIDqOozZKgZ/hj?=
 =?iso-8859-2?Q?+PtQIDnwkWoePIMheqfnydVV5vIix91iuV4m0ytXLXgobzqQXHP8Rt+Sn2?=
 =?iso-8859-2?Q?JqAfvxn9IaU4UcBUhUqAnXIpv7cxfVeXNa4psti/0gcQUWhrE5v816N8En?=
 =?iso-8859-2?Q?U19LMgBFLDVom9w7D5l1Bodt84wOvDuRbqGGqqiI2ZZWIh/z7A19QZ4Ldp?=
 =?iso-8859-2?Q?21dYIT4uvYuwmEUcW2BcUEpNvQ9uS2eKvoYy6BSxb9jJM1xgPloWzxutis?=
 =?iso-8859-2?Q?/RdiWhJLvdB8Wd7WrnnmqZI7v+VZTiMV/QW3OJ15TzaoiPs6iSdV+5PW+v?=
 =?iso-8859-2?Q?ruqTnb+DEZuSmNZSQ0qiSvzsdkbPf9ukgJecl/Vsrjz9VAe/M+SGnPYBB9?=
 =?iso-8859-2?Q?3yKb1daWVtQM71urMe7Gnp/Jt8pG/OpGWBYerq04DKlZ7iMjjZaTl0ESDX?=
 =?iso-8859-2?Q?s9veYWCNwsPjYpu2e8JbA9OA/1UauWqPV33bv1+z6DhS5Zvn08QU7/rmHZ?=
 =?iso-8859-2?Q?jH8ybyk/xrcfATZKxjGUS5xS/cXdz/Vyx9Gx6chjr02cN7NiFzXsbv1nXP?=
 =?iso-8859-2?Q?lR9AJ28SCOTNOgFfGY2BQUAYJWqI1mIDULIPcFSIQPAnqC+IbggqoDRnx2?=
 =?iso-8859-2?Q?4zvYAYSUCHJ+QbiwXfBN61SOUJa2zbCREadp0xq+sVFJM7IJa1nAQnSvCT?=
 =?iso-8859-2?Q?ob9HRFozdvTfNnupZaiBAznRsddpwkGeiQh2hkK/lp3fvUxjqIJc4fqvBn?=
 =?iso-8859-2?Q?zU3H7lgRloRtwh4n94VDUpzQYeqNlFT6/N9PIy4cgB+4lvoWk74nTOv4JF?=
 =?iso-8859-2?Q?n4Bunq9xguYxD39Lr9ii8nf2MzV0woScLvxtCEC6jfwseT4JYCvx0Wd68k?=
 =?iso-8859-2?Q?hhSUgYDR0EPy9qyWQU9ygeOGdzeqxEd9bhonSlrXs7EvQRU1eCNrI2yjpU?=
 =?iso-8859-2?Q?cAnwgOVtUS+EJWChXVVKs9Cv/ECa94DZP1JsO8w82hbcGt+2/No0qEA5Zp?=
 =?iso-8859-2?Q?F32g5cUtKa4jDxKDuUQnJM+/r2loG+2xEjgiWQsPJYBCophTA6cchtUfoP?=
 =?iso-8859-2?Q?SHHbKBd0wifJPwc99l7kgiSrMAxnZeP2Fhrxvn9mRnplPvt5IXpLw8OYzv?=
 =?iso-8859-2?Q?7+rDD21ptDvcxI2Azx12LB5OSsNPLtVRI62DvR4Q5LbA4DbW596HK2DGpp?=
 =?iso-8859-2?Q?mlgn8MNNx+e5OGXEFR/IhhYtfoNsdgZTXPH3DRn4rJHfAuFDm0+sKYubpl?=
 =?iso-8859-2?Q?RhZMQfRhHbM6CnkNWLLI1xwJUPP+zbvkq77XbDlxIakRTgsLR4BTi3PR99?=
 =?iso-8859-2?Q?Dp3AnzH54tzHMPqzGDFQzhckKuAhr1yvR2SJS0c8ftvyWlfzXo9qx+a3XN?=
 =?iso-8859-2?Q?L6zGAhYaRKBTeoB7rglGkyS/wPTh8NtfnA5UMHo4zZA0nyqhcmPaf9PL/r?=
 =?iso-8859-2?Q?kYVbUFj/2Qx29fN/hONOCFAewQ7LGAdhPwhpr52hfLi/MItJYwuW48ZHo9?=
 =?iso-8859-2?Q?XCGtEHYm9mq9QM3rP58quCPzfWdnljjRq11YQhFnz8mR/uo100N2uCBiOd?=
 =?iso-8859-2?Q?zouCdKlCqEC777QiBpxoHoEMCoSi+Qj4M7g3JEm1PUP5dnN+QFNazJWHYl?=
 =?iso-8859-2?Q?RLtBptTF/wvsG6O1kTBfAYjLhYUlK4qOWWaNsIWK4BdoRv6ApupZvobw?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5800.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 66e4cf93-e25e-4339-dcd3-08db9f2ad9d8
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Aug 2023 14:04:19.4879 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IAzYpa16yMVSez1MGVGZcR7pSRYyngR9+oxP5iMRqv41TtpJwI8zHTeQ/wht1Ie+Ntc4rkys0ufvdaZU36+gxpo7g7rJ0em2+mn5X7+iZwc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6349
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692281069; x=1723817069;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Rw3epG2rr7GqM4fwv4sBBMFzNQ2NSAZUWkKs+d+xT5Q=;
 b=CAj64YYM+mC1TckWY+F/rzZ46EIRusLBcCz+JD1CRJ0URv8tNX+DYEOw
 Pr0qLBkv+ITjUhrZ5JqghKeqVnUS/54Pg/VkMBFXQ4vJiolWC/fYuFAVs
 ak+1EzKXv36c7LgBqA0Ja01zkelWaw8kJUD+sKF2bdMsWm365xSco0FoI
 PyY2Q0Vkdxr7I4c1pdK/N8XKRf77cI0SDx2Ic7lMX2AZt1DQ8zGQz67p4
 /j7TRZJbG29YjlSYU8VdE0tnb1fVbv4oVVbwnDQ5T1R/4xBk/JnomM4mp
 ip0O0NZa+G39rhJu0kdsjn0GjAT78VsMhbCaATkRYlf1pI08Q//wk/gHu
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CAj64YYM
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: [Intel-wired-lan] [PATCH 2/9] ice: introduce PTP state machine
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
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

On 8/7/23 13:12, Przemyslaw Kitszel wrote:
> >=A0=A0 /**
> >=A0=A0=A0 * ice_ptp_configure_tx_tstamp - Enable or disable Tx timestamp=
 interrupt
> >=A0=A0=A0 * @pf: The PF pointer to search in
> > @@ -1285,7 +1310,7 @@ void ice_ptp_link_change(struct ice_pf *pf, u8 po=
rt, bool linkup)
> >=A0=A0=A0=A0=A0=A0=A0 struct ice_ptp_port *ptp_port;
> >=A0=A0=A0=A0=A0=A0=A0 struct ice_hw *hw =3D &pf->hw;
> >=A0=A0 =

> > -=A0=A0=A0=A0 if (!test_bit(ICE_FLAG_PTP, pf->flags))
> > +=A0=A0=A0=A0 if (pf->ptp.state !=3D ICE_PTP_READY)
> =

> test_bit() is atomic API, but "just reading/using variable" is rather not.
> Please extend commit message to say something about why transition=A0 her=
e =

> (here=3Dwhole commit) is safe.

There is only one instance changing the state of PTP and this state
cannot have multiple values like pf->flags.

Thanks,
Karol
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
