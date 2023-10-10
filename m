Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC687BF9EE
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Oct 2023 13:40:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E28FD403CC;
	Tue, 10 Oct 2023 11:39:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E28FD403CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696938000;
	bh=BHgRNxI53ZOz4L+AxFY1gr4OatNlo6m+QKqjMa6DIIc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ObJ3IolcNEip91PmHHlRVA1mbrTF7h9L/rhyPKD71xoyX/FnlwQ6eJk1Y2jH5hW0C
	 7sExz7tC/wxzMksbbDABnFqQjvczrn8+FNYyOaJm+NVPS8UrobDr/MbB/ti04T0Yvj
	 NW7CBhUT6WfzgOdwKhJrjpODOAHRo/LuZxaTi/vAGZo7ptgXDshKxG88JtQV1AvFto
	 0gqqXLsfGzvKb0ZwBck3Vx4GpnrCR7RfVE+8ucwtZ0+05ilBkN5f5ORDFliNE8LaKD
	 d2TQ537P2up7ApWMCOfogr57o1Lkh9ataOLq7/grHatCvc/fjTT2BR/TgLo3p7NCTU
	 SpJUijK4E7dgQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mkh6zSVVYXNC; Tue, 10 Oct 2023 11:39:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3E6E64026D;
	Tue, 10 Oct 2023 11:39:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3E6E64026D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 5DBB41BF318
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:39:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3FCE140156
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:39:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FCE140156
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id T4SknbCiZP6w for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Oct 2023 11:39:52 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D2ABD40150
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Oct 2023 11:39:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D2ABD40150
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="5929329"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; 
   d="scan'208";a="5929329"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2023 04:39:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10858"; a="747048037"
X-IronPort-AV: E=Sophos;i="6.03,212,1694761200"; d="scan'208";a="747048037"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Oct 2023 04:39:50 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:39:49 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 10 Oct 2023 04:39:49 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32 via Frontend Transport; Tue, 10 Oct 2023 04:39:49 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.169)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 10 Oct 2023 04:39:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XjdrW2/xqJ0oorDJ4WAHIWw8yrZ5ljNzWQYqIroGkIbXUg2mpy2n3D/+wO91tmnlvh9FvWHrkmSnLI4xLRLBESPyh5PhQDL0yp2NqMO54Uk19tk0wmf6T45p1pmVxmMlBgamLa5l70s2VGQCRNhjK7UXzXX0dug87/wrNAeMEkYE5wSG89HlctUwaxOk9Gwuaquz9JVHfQva1Ce/cBRQppEVxG0WZbgDl2XwTFROy9wVVkSMKJ54yxH4wNEOLtBiJ9O3yDsKb6GIMDBS/u1usFQRAJu45ycT/DmiwoaXy8K80xxiZY1bc+Ezkg3GtSvpWgMNAq+/p2FK6W3SX+EdsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aelR+tH5VJmUJfkSDasYT4w0gYl2Rli89OAxvTYRviQ=;
 b=F16ZYfkPuHRTsJ/AAUOBDOjnF1FZ1VQEBZbkCGg6mgzGqRv+D6EzJyyTzhPa9TLDlzF7013eUY5B+Raz/NPwk0nW34UOOvZiIbkhlAb0Rwg3QUonx+nVg6XMfwA9KeZbQeblNazuqBfesvSHtJOz6KgVkRP54Wt6aiG5jsHlOik9abGf/IDSQzgEzgJ52dq6uKvQX+vSzURLXw0OycuKZ9EF3TGc1OuW48CPhFV2vuUX8lRmJs4Zxi7TTqaj8vKRnG8fsrXlWmPfLrdzo1n4XoXRUa/SYcq8kFQJpdNz0NTkdeFNQ15ia3/CdpIJ38+qdIx+u/G6fwN/Lt09skyqbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9)
 by CO1PR11MB4994.namprd11.prod.outlook.com (2603:10b6:303:91::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6863.38; Tue, 10 Oct
 2023 11:39:45 +0000
Received: from MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4]) by MW4PR11MB5776.namprd11.prod.outlook.com
 ([fe80::2ec0:108e:7afe:f1a4%5]) with mapi id 15.20.6863.032; Tue, 10 Oct 2023
 11:39:45 +0000
From: "Drewek, Wojciech" <wojciech.drewek@intel.com>
To: mschmidt <mschmidt@redhat.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
Thread-Index: AQHZ+xBjos9Sg8YvcU2EvhZcHWkYiLBC5fpw
Date: Tue, 10 Oct 2023 11:39:45 +0000
Message-ID: <MW4PR11MB5776E18B4699E7FFE49BE3E3FDCDA@MW4PR11MB5776.namprd11.prod.outlook.com>
References: <20231010002444.43507-1-mschmidt@redhat.com>
 <20231010002444.43507-5-mschmidt@redhat.com>
In-Reply-To: <20231010002444.43507-5-mschmidt@redhat.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB5776:EE_|CO1PR11MB4994:EE_
x-ms-office365-filtering-correlation-id: a87fb929-aa7a-434f-d0ed-08dbc9859a28
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: i2ZEk3Z2Ptr2fkXi4OWnPTahpjpgqLVkGZ6iKRvKFY3Qxi7NxbWyXNgrhSjn8Odba+41JKuehhB3Yybof1y+c5mpPGcLYKh4rKm/UJQpIT/TGBQ/RKKzqCPoqTlUIWnAWywzJP4Yb9VF3Uo/bDw3GYOjRFruYNCYeUdONxZvyNgKTAVhxRfSuzA0OdKGDPLDRwZmR2p8/xd8mRUynLd6xwvTM5RpwaSoNobZ1nEKvdmc38PQexDKxh/qgOGadnYpWWDts1+8FkzY26s4OnrsfCbCPx/BOHjbQcZMp3gAPntI/RNd8eDib0j3ATmq2jxPS5U8hy8zTJ4bFGWg0dIXyPmRFG9Ps7/cML+v2eLuQGIilEAKV9yjWgcGw5tzYh9nzLWi1DQpT37nVQn4Ej4GEIcf0LgsZo1QT2OhSxBatx/1wBuTtNGu0LKZ5qT8NtUr1dMXCPek3DoGrlZITyzMeY+3aM0nRIw5t1DRcdAue0If6ymE3fk/CdfbctsFQklN9WrZLsoXsqUSYnSDLzT3+U6DbrDaJcYeEozJrXUqrXGsC7AOkCy/vHtUEy/b331arX8sT2pHZkSkpH5GTG1CqXM+8aEr1B7IJWrnKkCZrFI=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB5776.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(136003)(376002)(39860400002)(396003)(366004)(346002)(230922051799003)(186009)(64100799003)(451199024)(1800799009)(83380400001)(26005)(53546011)(71200400001)(55016003)(86362001)(33656002)(38100700002)(82960400001)(38070700005)(122000001)(107886003)(8676002)(478600001)(4326008)(9686003)(6506007)(2906002)(8936002)(7696005)(64756008)(110136005)(41300700001)(966005)(316002)(5660300002)(52536014)(66446008)(54906003)(66556008)(66946007)(66476007)(76116006);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?dORUcY4w50NtmpqnzhLS2sY0FvSpouliAmuGrAUN9iyWfUux9KJbDPiHKoPL?=
 =?us-ascii?Q?XLRCQ+duyS2kk2hjkMJ7LoTaiI5aa1Sa2xa0q08WnwIIRxGseF/+Ve7bCrq4?=
 =?us-ascii?Q?jHOHCXehDMntpJUQgl1HleusBNbrQA0PhTBvFAxCNPF+5BAeJ4LL7KJtzCX5?=
 =?us-ascii?Q?RtkNN7dD1I8NAS2cQD6J7XzEvxI1Pxz6eIAZu0wLE5oibog12906rc51N2Us?=
 =?us-ascii?Q?6mWkkqDAT8i3qVggDdLbm5zjtfrWELO0jiHG+z1sUHP8FiJGaNHceM4d3Fs2?=
 =?us-ascii?Q?w9Of9n/hQmT9xCuCQOXGV5tXn/qG54FJvorlh8Ygakg9qZCjvxkhihHBVOdT?=
 =?us-ascii?Q?EOxP88XSx5gx2wX5YZpfatuWPs1v3bVUwcKtHnH9Vb+DnH3Zw0TOx2EW8MmW?=
 =?us-ascii?Q?creMxjfyF/g0xplwbMk+xJX54fpl1en8G/ZArRwdvP1LzwVUcEAIPvJ4nS9R?=
 =?us-ascii?Q?Y4VuUkKiG/gJotr0LtqLYViPRdeTnYb0mdyMPC/OzuZYXzpo/YFfagVaizpY?=
 =?us-ascii?Q?4r19Hp1iyRpGlHXEGTO279MndM6/eEwCCO/mdXaRtlIMsItJ4WfGV5NNMBIl?=
 =?us-ascii?Q?S8WQSRSbmFQ/MOGBddOXE368ABJtCLWGsu8/hNo/z5fBnu/68hVfS75yh9g7?=
 =?us-ascii?Q?NgZOROu/FPmm/gKdqVQ9o1Piilj9me/OMEHEaYrc/0ybnyoeEsJo4yAFSUgU?=
 =?us-ascii?Q?wDPwwAuWkh1JkMRvukOYSdzJExD/wh6I6SF0HRLlMJiNI4XhuRL5YGkgdtSs?=
 =?us-ascii?Q?rgQLA9HLEKgumAWY1rOSCk5QqBND4yDXD/S8Hwj7bsNNjlEj2yrDFZFUIZVp?=
 =?us-ascii?Q?92I4X69kH3cgL9Gn1UT+6zoqOCcx0i3Dyy1ENePYEHYRdVCEcZY06twgO4HF?=
 =?us-ascii?Q?8Ma/+gVWBdSz3Nl6hl4BSPEXR0abzHN24ltFFCyh2eEOm2WuzIJEwqJ8/dKr?=
 =?us-ascii?Q?RPa2/JO3Z/NAOGo2I7MWJimn2Cy1x/sAQrqAH6ttTLKSthhjDfJcQRYTDwJe?=
 =?us-ascii?Q?EdHKvr47+d0ZQUz0uo/a/dtOfeSK9wtvkEhPmLVEZCV1Y7NmH3lfd5GhPdvi?=
 =?us-ascii?Q?dsI4yi/bINYcdUOB3YjVJ6wZKOu6Kxp25I+FuP8GPItINEh9GUM3PC2Xrb0/?=
 =?us-ascii?Q?sbgeU8RCYKDValObeOiD9tDsUIkx9Qyz7yksTJJ3+XAlfFl7LkLMOXMVY46o?=
 =?us-ascii?Q?NPrcZ2LnfU/reRf4CYJVGBoIYNF5raIYBQji+ih7F/Ej2BvJa1jnZWyCF2Px?=
 =?us-ascii?Q?uYesDfPQXWsbJR906Rv6abbqT7jwm6ArexCDy8ipJltuhhbIpVr8EUTU0bUt?=
 =?us-ascii?Q?6nDdzBwM7K2z614azcxASCBSbh4WPpe21xI7TiatBp3sZO0LnZ0ykSJEp/0J?=
 =?us-ascii?Q?s7S4dBTgKa/XduXBxdW1WuPvpleNaqguPe95fXZR1llI6qKk1j3saP9SN1Tu?=
 =?us-ascii?Q?bh9MZMKaeNH3+gVcpZfRdHQ0yJMF9kiI6+a//tZ7xaaW+wy5V7ILy31A0w94?=
 =?us-ascii?Q?D3PZAwHyamIHfDpJUmGCS+QuEr56JRGw/uEGrN1NU9jGTqlgmKEcRXlxEYvP?=
 =?us-ascii?Q?eS5fDcl8KC0P4f/XDzWoixApymmujimJvfdV66PW?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB5776.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a87fb929-aa7a-434f-d0ed-08dbc9859a28
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2023 11:39:45.6872 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JzwXFnSQ/HdK6VVfJoXa/J7Ns6MNCewL+X9tRVd9N3Z1r7suLL+vfLjIjZEbsAn23ObLgeuYm70vTaa8let0G6ic8gWkG2EuIh1ezxhipsk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4994
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696937992; x=1728473992;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=2s95Fgiz0JHYaKIs8Q/pKOoQW9qpwkYF/1gbF4hwfNE=;
 b=YjP7MzGk8qMTxYp2ONcp8NXG1qId7oruytd5gmG8bKFw8dvzstdguB8f
 qhZLMmIJXEHul7l37bck+WZpOkl/vaH4Co1YVBFzogJ3VbMgFuwUe+xY+
 DmSz9Jl9S8tBl2pZA9lTBq3k07g8FLLZLcXTbBO3+4y2iwcn3VxTZiVD8
 9jnaG3jSdgfVEGpudDQ0mER0jh1P3ahSu4TjTUZDnpHSOpp3XfjRFfdat
 PyZ040NvDg5qdf390Z45faO6HSn3qjE3UeZCAYXaIeAZhEEdE6SHn1h8U
 wNvC98M59XGmfwBZs3dliEO5+it/j9rbJd13ufCrwHQoEHJBgoyjwfpH6
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YjP7MzGk
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down,
 disable queues when removing the driver
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Michal Schmidt
> Sent: Tuesday, October 10, 2023 2:25 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Radoslaw Tyl
> <radoslawx.tyl@intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH net-next 4/5] iavf: in iavf_down, disable
> queues when removing the driver
> 
> In iavf_down, we're skipping the scheduling of certain operations if
> the driver is being removed. However, the IAVF_FLAG_AQ_DISABLE_QUEUES
> request must not be skipped in this case, because iavf_close waits
> for the transition to the __IAVF_DOWN state, which happens in
> iavf_virtchnl_completion after the queues are released.
> 
> Without this fix, "rmmod iavf" takes half a second per interface that's
> up and prints the "Device resources not yet released" warning.
> 
> Fixes: c8de44b577eb ("iavf: do not process adminq tasks when
> __IAVF_IN_REMOVE_TASK is set")
> Signed-off-by: Michal Schmidt <mschmidt@redhat.com>

Looks like a fix, could be a separate patch with net as a target.
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>

> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 0b808fa34801..2ab08b015b85 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -1440,9 +1440,9 @@ void iavf_down(struct iavf_adapter *adapter)
>  			adapter->aq_required |=
> IAVF_FLAG_AQ_DEL_FDIR_FILTER;
>  		if (!list_empty(&adapter->adv_rss_list_head))
>  			adapter->aq_required |=
> IAVF_FLAG_AQ_DEL_ADV_RSS_CFG;
> -		adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
>  	}
> 
> +	adapter->aq_required |= IAVF_FLAG_AQ_DISABLE_QUEUES;
>  	mod_delayed_work(adapter->wq, &adapter->watchdog_task, 0);
>  }
> 
> --
> 2.41.0
> 
> _______________________________________________
> Intel-wired-lan mailing list
> Intel-wired-lan@osuosl.org
> https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
