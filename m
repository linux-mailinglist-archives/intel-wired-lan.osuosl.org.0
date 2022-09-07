Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (unknown [IPv6:2605:bc80:3010:0:a800:ff:fed1:de3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7CC5AFCE6
	for <lists+intel-wired-lan@lfdr.de>; Wed,  7 Sep 2022 08:54:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6C40440393;
	Wed,  7 Sep 2022 06:54:31 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C40440393
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1662533671;
	bh=TIXRCp/p9fTRkxJzcJr420JlhAGMQ81IIwStN2tkTG0=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ZIQhupcebHiWPaucWHfIekdQUrAIFBqrRAqN46gNykf4SXW0fGO5rJzmB3/C6M15v
	 KnzLE97KsUlA+cOeSD5K30MXOKL+58cuXcYVR/DctyUYoihdo6Y5MYFcuiDmF+XOWz
	 h8k6Wq7xvd/1A8ap47iztqEWaKZMu16qYulKRxJYyaiD2ap4WEkijJtLlduVa9kJHZ
	 sT6hvKvJnkiVdG/0uQFpRjZGgfXGfSbEaXhAcM5iuFNTGjr3H66zwD8m5EvazqoMxX
	 HVPDTOB1f5s8dD40NxdW+lJOPPMyzxNlO+InP2uc0Fwu5flC0C65rj/KAZbSoPY7p2
	 hApxdtoRQxxiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id x0ZDDdnfVT72; Wed,  7 Sep 2022 06:54:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AC7140291;
	Wed,  7 Sep 2022 06:54:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AC7140291
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2A4A71BF957
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 06:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 08B2260A92
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 06:54:25 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 08B2260A92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3TkraR0Psb-D for <intel-wired-lan@lists.osuosl.org>;
 Wed,  7 Sep 2022 06:54:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 3D726606C0
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 3D726606C0
 for <intel-wired-lan@lists.osuosl.org>; Wed,  7 Sep 2022 06:54:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10462"; a="296796851"
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="296796851"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2022 23:54:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,296,1654585200"; d="scan'208";a="644494031"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga008.jf.intel.com with ESMTP; 06 Sep 2022 23:54:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Tue, 6 Sep 2022 23:54:14 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Tue, 6 Sep 2022 23:54:14 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.109)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Tue, 6 Sep 2022 23:54:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SuuVhy87R4BxQtK3pOWcTmESsLL1qjKNSdONP64i0GdAbSucD0GNS56P0/UM+VEkGZKjKfAl22eVruIsTOhVWdlI2dKlUDtlb+ka8AIxiHy8lvK384k5DVZFHG6/3GkDV38ivD3w7w/9SEUh06JzsSRYYoVuFBnmBbP4+a4o1CGLTTITx+pI1zM0BD7PLnkU6h1JtlzQMV3VAHb9VE5gGOiyv63EumZPiqAZdzg5aplmM8QnkH7uMCbw3nmhqVhObHfvzKOIwoE3VKD7q5IBErVJITt0qatoXeRnozk4an0cUdjG12hheonAfWv8Ah+CWJDWeT7bGLspMACpFQMiUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W48bIscS0gXoeGFi2hxaC0HgkKePRcg0ssxS9oz7D+4=;
 b=T+CfwOQ4yJoBIdqD57PD8jRteTYEzf84MrpfCL9fVbipIrjOBtVhK0W4CdAk7ZPw7xP9PCuf+eKwbPENHu7nC8d0Ks1oa658tW9/x+M8cD0ikvtamZwZ6/ECa3PQqZNX8TzfEfkDd5uey5yce1wg4Y1qYEw0uCzlQmd745Qp6hIodberWktABsWClGeZQNq4Wu8Jht7HhPV6D6knu14Q0FoSwr+BJYVywae2p7/2r8kPyzwoptghdrPOUJHnMd1Xu2iSTC5pP4XeDq3bEavQBuVR/jcefweAiDe2Tt1rDeJw78U+/wT+80+qQx4ahIOf1v96/ElxUd52rFjhcWxGOQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 BN7PR11MB2849.namprd11.prod.outlook.com (2603:10b6:406:b5::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5588.11; Wed, 7 Sep 2022 06:54:13 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::f43a:da9a:b75d:e4bd%9]) with mapi id 15.20.5612.014; Wed, 7 Sep 2022
 06:54:13 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Palczewski, Mateusz" <mateusz.palczewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] iavf: Fix change VF's mac
 address
Thread-Index: AQHYvg/mrGGVBxP3m0avtrqIzrMdq63TkQYA
Date: Wed, 7 Sep 2022 06:54:12 +0000
Message-ID: <DM8PR11MB56212431AB5DF58F6304C4E2AB419@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20220901143206.454183-1-mateusz.palczewski@intel.com>
In-Reply-To: <20220901143206.454183-1-mateusz.palczewski@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM8PR11MB5621:EE_|BN7PR11MB2849:EE_
x-ms-office365-filtering-correlation-id: ebc19447-b7f9-4411-14ea-08da909dc5d9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: c3hSwKgDIfZx5IKP13vKPGkSKuhurEQsWTM7RURwdMVi7giOud3r7FOlFXDa8zLp2lNBhoPmJCVt4+Bghbd2k8hUndc90PXyLJ34fbDSxMS54K6dOxR7KloSIFx9cqV9+yLdaZJG9nCoXcjw3RIE3pDqhlqXbmNe/y0retCAZUicdliZpnfBEoe3+TbroO4wy/LpFyQfeJdXeWbxFyLjExAFW2LAuIdBmexAjILAejEHJZn+m9bj6yUE+lBjyO74xP98iWMterM6PPm/psRpKHSl3tFGoxJz52WOdDEkTZwyzLS7eiP3Ug5+RJ/ylaLJHQY5LChTtP0jaMZR0VwJH/recRUh3SkD3tnjkesMD4XAOaIIYnD7/EG8A9cSY1G0gx827mCUG+aqRxx/pO4AIw8auycXpbtNlAiwn1bb0A8NcYpY1B4RebbxuXQAmgjCt+wvjie7ohrh+tXYcW6UNEUucpTJkuVAIA+pPS7uev/a/yqpN3A75HgOZKfnnvAH4pYbTkyXshF3BMlMK49iWhc/L5PXzRxrjiTTQWcQ9jRSZMyYoqwFrFi0kB7+wWVUISf+zPcygADJxdthBg6pMqcsnUNGYXqwZqr9Th8klTs2XLYZtb2AAhZla/TZO9F4oX6gTf5VBE0gLPXMBGpVZEV3ZevGps4cJOKf6Mp8A1Jkq7ZiprkmHXxH/5PEVvrvD7vJ4nFs6kr3NvNsU2JOesZV3n+kIlZrFNeRerzodmJHXjhQavlrEHbWOoaISlEstkw0tjKiUPQdPlyq+jSBAw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(376002)(39860400002)(346002)(366004)(136003)(396003)(86362001)(186003)(107886003)(55016003)(478600001)(41300700001)(26005)(9686003)(71200400001)(82960400001)(6506007)(7696005)(38070700005)(38100700002)(122000001)(53546011)(83380400001)(316002)(5660300002)(66556008)(66446008)(76116006)(66946007)(52536014)(33656002)(2906002)(8676002)(64756008)(8936002)(54906003)(4326008)(110136005)(66476007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?YxTHofYEI/eOiJka1Ghbt2mvHhHgoWMN9L4eVwprm5UccVtkN5yx3izfI7wI?=
 =?us-ascii?Q?O9fl5AYkzNXGI2mvWNVvriXdBx0shF8BCjukBpePF3I4aARblu0yiiEPXmYy?=
 =?us-ascii?Q?yunQ6tC6VYAwDpDdOOkp25OKeGIhVwS4JBztzUh7/PtcF6KkoQc/di2qx0mL?=
 =?us-ascii?Q?PumlHxRxYiP3JBhInzYLJ6RUfq7lDsvBFsskVO4zCHLfXco1ASAUaxL2WMZW?=
 =?us-ascii?Q?BMdie84pWSvoIapHQHQ+hu97ypysxrKGImbjGgI32YuuMUAJJm66jo9xmA4Z?=
 =?us-ascii?Q?rDVgHaiTDRq7eT9jTFYzuhLM+0eriFCNL3JP/5EAmyMx02XRy1Qp0VNIyU0O?=
 =?us-ascii?Q?txm/trNfZfmEI73yrhtZKD+WToKMFukKID5T8J5vG/Fx+lQF7739dURlsPyj?=
 =?us-ascii?Q?vE1eBl/kGcmrKGx7GACS2BX6nZ56XDA5ewsfYhD23TfxjSuy1HNc2MDGAyQo?=
 =?us-ascii?Q?bIC9SxCKz1Pp9XmVB3UD2tzbbQ8r4mpvzrNM3f83LzLIR8yHvbloseCRPNxX?=
 =?us-ascii?Q?ote/Wp7FvCElCId32TOntb8NU4oIZo06gd5ORbS2Uyt8bdrGBpluuex/XPuk?=
 =?us-ascii?Q?YL9dqbmMe06WcxSFziaCHv2LdqM6msPtR8W2NfJB81ohwgwFct1SMElOqjkn?=
 =?us-ascii?Q?F3Zmk4irGUVYK6SRhoJtMbYYX6lpwFh0voa8d27NuoIjsuob4c9gHcHsYr2t?=
 =?us-ascii?Q?ks4RXRpUSiOFMaGNnZvTtFmzKc5OnCgfto6HjdXfTJhJMQG0l57OFhb0q3Xs?=
 =?us-ascii?Q?1VsaqzejSeAmre3ofZc2pBp4Dm+lqObcwirc7/sfVjdLHCH4a84cIYuQ5tJk?=
 =?us-ascii?Q?ObMRtVnh2U8Dq1/vs7mgvqwWqpvcVZ71XD+TN80bqzuA97tipVgdEWovr/us?=
 =?us-ascii?Q?1tnvXLazUOalNzeELyCM76X2F6rWlSoLTc6deJT/97UZ8YLvmt5sMLR3pYLt?=
 =?us-ascii?Q?AudlPBBOnnbjdiKkAxoYSSh4zPPe/wYosl5CCRg+1s+OJBTIUcr7pjjBLF7D?=
 =?us-ascii?Q?IxMvV9M/EX3fd6lG+9xzdrOOe2Dzx0UulXgUFB6DNRxf/Ja3S9xGDl0HusnT?=
 =?us-ascii?Q?KWk3/Ak1eBwSYIHMtMmmbcRX/+ktDr81uZVJNMTncA6OYdjWTH1FdwF3X3gw?=
 =?us-ascii?Q?pjgItcIw5IdPceMY69mW1i8pzK+YRoBPMl98n+1mys/LZusyl2MTzRo6kfm9?=
 =?us-ascii?Q?6qH366npnUyA7/gQ5o4305xKRSI2xMJOCGW63gxGr9q6JmZe8oe7I+2v4T2X?=
 =?us-ascii?Q?6RkCecBucnqWTqlMUq+Xk1HVd7WA6ZsZMoqbz6a0adxi9jy+MKSh1zankesa?=
 =?us-ascii?Q?QB8T22/hR7N6ZpjGuzEfRA68IoRd0ekrc/wkWN2b0D1WlqXryDZVlE6voF1C?=
 =?us-ascii?Q?wd3A22vjm8jtbbcZLRmuLN2Rw4YcE52qF5OeCaJa8aLUGqudhdCzh0a7a35r?=
 =?us-ascii?Q?9YdyRbZO2SbkqymYf0pYLXgua4BHcm+GkL1qpWpouLgxovlh2Q3qu+45Vxmo?=
 =?us-ascii?Q?hvyH5jIbT4M4XjMhghwguqMkEpDXlFWDuq34TQxE/T5X517Xk6UhDTwcVp9k?=
 =?us-ascii?Q?prGwhgvAUu+wZoPu85GpSGpWGlnhoAlHFYc6CspKQO+k+lv1cVTRN4YC/f+u?=
 =?us-ascii?Q?YA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ebc19447-b7f9-4411-14ea-08da909dc5d9
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Sep 2022 06:54:12.9325 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VlMLWYIfv0Mz4KSDsD9+LDbznp3+iebgxFeTEOi3CPKJ4AAIkEKeE3kl37XeDRaSuVUxwLKDxoT/CpuxPDioWboAUxSNGkKRJpkjIN4nCmo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN7PR11MB2849
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662533664; x=1694069664;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7MoJYcDV2D8BRoeyxvlkdqwCdfu+jR/8gxCtjsgIH9U=;
 b=MmeHr35+Ad9NEFLK8rz/tR9LcipRACGFgSTbMhlMBniBkTWFdexoJEWk
 sk6dGUlniFNwh0Hp396hZTx5J8F5w31QXtFMvGza7d7rEd190CF76JpMn
 vzKW4Jh65Gb4mw8TK2pu+PwvkWqT+hZQBlQyvkvYkocP1FlhoAHM0WksL
 TbsQIqZofo27mKjQkt2RMz/YhSTcNmyZ7a4eljrKohXLfgFUJgQGEUpta
 P8N8JCyJKpS2OEsZ/vHBKJph44H8QLvM5h3/ga1X6Mkk/ME6+v/zKiR5j
 FsTEKOLFgzUdZePV0Cy7xtp5IA5obtxT/Y9SdsKS/eecojdOQIwufET7l
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=MmeHr35+
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v2] iavf: Fix change VF's mac
 address
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>, "Zulinski,
 NorbertX" <norbertx.zulinski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Mateusz Palczewski
> Sent: Thursday, September 1, 2022 4:32 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Dziedziuch, SylwesterX <sylwesterx.dziedziuch@intel.com>; Zulinski,
> NorbertX <norbertx.zulinski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] iavf: Fix change VF's mac address
> 
> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> 
> Previously changing mac address gives false negative because ip link set
> <interface> address <MAC> return with
> RTNLINK: Permission denied.
> In iavf_set_mac was check if PF handled our mac set request, even before
> filter was added to list.
> Because this check returns always true and it never waits for PF's response.
> 
> Move iavf_is_mac_handled to wait_event_interruptible_timeout instead of
> false. Now it will wait for PF's response and then check if address was added
> or rejected.
> 
> Fixes: 35a2443d0910 ("iavf: Add waiting for response from PF in set mac")
> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
> Co-developed-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Norbert Zulinski <norbertx.zulinski@intel.com>
> Signed-off-by: Mateusz Palczewski <mateusz.palczewski@intel.com>
> ---
>  v2: Added missing signed-off-by, fixed commit message and moved
> parenthesis to the line where function is called
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 9 +++------
>  1 file changed, 3 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 10aa99dfdcdb..0c89f16bf1e2 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
