Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 849FF6D0BDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Mar 2023 18:53:20 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id D75AF403EA;
	Thu, 30 Mar 2023 16:53:18 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D75AF403EA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1680195198;
	bh=hkz9yfCh6yJ4vjUrJXgr8kGg2hQbor/U32L6kz5dS4s=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=0dplRkIpKN0+eBlnv5IByyfNDvvUO23LNQ9eRK1rOHB3xwOM0Dx1hlfp+eROMDG4p
	 YfnK4g6n7DMTznK5nP/dHTPnyd6JsXEVCLnoRipOSSNiapNXLYNQODIdIZqeYUjv66
	 kFPCGAg+rggD5OX27znVndHkemBSlHLu25qFHkF7L5CRa9q9ZaF7vzaggD7Uq6TsR9
	 RepyyYAQonB7zWqUOQBMAZzO90qdAiysOkMhinH/Dmc6sQIX+Q6ywUlOa6D32qiF9K
	 Bjz1l3cs74xkVWua5CtrQjd/5/LAK7FOvXsokuoAG8Ni3T1XqkziXCSSNw4I0Q/vs0
	 epQoVVSla7rtA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id efeFjm7OwcZi; Thu, 30 Mar 2023 16:53:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9E19B40184;
	Thu, 30 Mar 2023 16:53:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9E19B40184
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id C6CB41BF3F2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 16:53:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9DF2161662
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 16:53:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9DF2161662
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id H-8cIs6Wprt1 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Mar 2023 16:53:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 433A960E6D
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 433A960E6D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Mar 2023 16:53:10 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="329744815"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="329744815"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Mar 2023 09:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10665"; a="749278737"
X-IronPort-AV: E=Sophos;i="5.98,305,1673942400"; d="scan'208";a="749278737"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga008.fm.intel.com with ESMTP; 30 Mar 2023 09:53:10 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 09:53:09 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 30 Mar 2023 09:53:08 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 30 Mar 2023 09:53:08 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.102)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 30 Mar 2023 09:53:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TywBcyOSCInKFzPzV6xtefzYkOZORJHb2USEtfXzcgDmLMcyXRwORVOZsnEbhnUJjEHo4xoRJEi7LKqEBHlo2JT8sdr6tdxnWhgcRmhd7FD0PF+aztsLSgCVp4ceXKMvg9h8F+B2ol+0c87oQxupG9fyZoYqdR+n9bR/IPUWNfHXtsCkRhvJmEu+O+IES5BATIK5ato1uWcnTvweGSLWTOD+Ao0WZY74kVJdCxJeVKUkrADMbEzQP9Kxok9CErazl8Pa3vm8gWdBVyhbRzoUzgM7F5vKcDerGasVv5Nlz9UqOyMVtIuWGhHE1dw+MYj+T+8lvGQXdMt25EAry8zvzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=A4ook2tFXUg2QW8W1FrdtvEHz2lEPzy2FtBR70iUleA=;
 b=dMLuxQBsqTobhrrfHJNmtpvIJzsvMzVMYGNouEoFT4Rdj2AbCCfPBuIlQjdHCtGNOmhdUdaiVWQF9WypC772Q7oPhlrYvnUjh2YbZfgLqLDtAzAzrLnZxgbM5RBJ2hNMMqPyl9GuAxGzT2/82dRUIypOR+ePLDK2ofTtTn49NPf0Trt+h6jrYfUUT7NZ/UzPykGSUY+EpjtfAm8PbP8XvIK0pnz9ZxQYUC9cikwHqMXtrPR08EPJT8b1kDKSoRuUnnlFIgYcIWbp3GENd8WxgxHlVsGG15PGjDvS1/Ap8Vc3p7rWURROSc3WdtW+cizLaMhK6YIM+/8OVRb+VB4iEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by DS7PR11MB6126.namprd11.prod.outlook.com (2603:10b6:8:9e::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.6222.35; Thu, 30 Mar 2023 16:53:06 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6222.033; Thu, 30 Mar 2023
 16:53:05 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v3 4/8] ice: refactor VF
 control VSI interrupt handling
Thread-Index: AQHZXYKOOKpT3rzj2Uel1viINveAFK8NFMyAgAaAASA=
Date: Thu, 30 Mar 2023 16:53:05 +0000
Message-ID: <BL0PR11MB35213CA5C632F66092E450378F8E9@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230323122440.3419214-1-piotr.raczynski@intel.com>
 <20230323122440.3419214-5-piotr.raczynski@intel.com>
 <ZCBKQ0YIb636CBM9@corigine.com>
In-Reply-To: <ZCBKQ0YIb636CBM9@corigine.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|DS7PR11MB6126:EE_
x-ms-office365-filtering-correlation-id: 8ea99427-8559-46d8-59f4-08db313f3bc1
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KGe5cNAELKc9msv24ohzTF9lkOMT15+02pnNEakm5d48hAvQgOlRne1f/2Q2WTGIdWnYu2JzcaF8fAifSJEJKn3PJCN/ZmmwsOqT+5x+PM06ScG9jzF0hng+LryBWhpj4IyiO2ofB1qwqTfr19jegF3hVpTFMsda3cP/edNGT2VDy6Ml4ubel28AHQaIYy/W99UEVK16UEfApD2FGMBxWg3yYqyXAbN7lu0m/ZbkARKY0Xy2+L8vLkPCzPjSx8Mbx5+IiTu7wdMdtUvUoTI9/0E+I+gj9ImUDxgNsaDKdHUNG2aKHMDXXy7hWrOtelGj4pDNqH7uHbiRIVkNai2gtwZWRhSX9afN+eiNOvI6pk5Fc++4D8bwfHmIhhPdY+4APoxBVa0F/I3M81KZnNKyKs8Ay/62zevYbnBQDA89GizW0/f6oEx3TUlXxyrXncvWMZ+s4N7+8iRqT3jfZmQzcN5513Fd0YKUUJscmaDw2DMSaxk0R0cUCR0rPxnFobXRWXzXxZqE5X6KP3PYcP4hyYN0HcTvPnbC3+PM+HFrC/DU5BQYVfZ86pJj02YZ3Xzlfv78vTCgPZJchFOpK/rlRu7lc0PFNXeh12Ii51UQdF010glXcBr6xq1Q5kSPsM16
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(346002)(39860400002)(136003)(376002)(396003)(366004)(451199021)(2906002)(4744005)(6916009)(478600001)(83380400001)(5660300002)(8936002)(66556008)(71200400001)(41300700001)(66476007)(52536014)(66446008)(8676002)(316002)(64756008)(86362001)(55016003)(66946007)(7696005)(76116006)(33656002)(82960400001)(26005)(6506007)(9686003)(186003)(53546011)(122000001)(38070700005)(38100700002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nN33knCxoswZ06BnxwSb5jHIwDsiv4JJolHcVclmaX65Oi+j4u4fgDpgvQEV?=
 =?us-ascii?Q?+tZ8kQCNeMiS1o5DRWOSPNOq73vxfNit70TX3SC7jsskvtaB6qkHa2WEhRs6?=
 =?us-ascii?Q?BWkbfhP9yw1jnc5gmo3HmZdifwdII0pK0awg9gMYAveJA0bpsvoxg02w2hoy?=
 =?us-ascii?Q?XYKPj1me9ePXig0DaSbNmZ3geUnO8BX+CdCCFpIqpNlTuaLeyjbTN/QnmDWf?=
 =?us-ascii?Q?aVIloWfbAfvbapMyVmqU6uvKfIWd20pFvxA6x8U168HlmPXKkSOEqo1KckCa?=
 =?us-ascii?Q?ifwZA9zHIdzruWp9SMrz2ZY0EX/u8ejM15pHdVFwxT713xHz6AUIOG3fcxEE?=
 =?us-ascii?Q?H8XWgmTtH5Xc16Alfj7gLM4tAOfrrl5m9p84TGfUvlsjpX08qzYEmzq5TXIK?=
 =?us-ascii?Q?3v2HmjObnflW0OPIJTXzdhNpzmWiueC9klxd21U28E9LbnntHzymxTZqtBlw?=
 =?us-ascii?Q?oe/QNyAe4RKE/990PJ9M1c7q9MzjiobVAzJqTOl6mU5+3XH8YZwRIR4Jy2lR?=
 =?us-ascii?Q?66Gj5BIg4ZNMFftjmVagEQ4LjP0EH9MWCa/2QmFuNh8goRSgyx+kctoXxQry?=
 =?us-ascii?Q?jL3RvIoZDETWSOMA65KBhJrpoSyC8rbdEsO1GDv4NjRRD5ULyiyNqCgIRFNs?=
 =?us-ascii?Q?RZj8kEQG38nAa5O/kxLkBj4M1ktTZLMTY+8YeEs73/ZtnGPjq0/0a2uHS4MS?=
 =?us-ascii?Q?Lnc+kVrLjCc2q1SqJtP3ssqxEcelL8TiaurXNqv0BVpvYl5TDhgaf/UqZbW+?=
 =?us-ascii?Q?TW/OrPOaUTX2cor7XryEDkZ8P1VyLC2EysTA7ACVaAwbOHXmQhX6rb3RJu1v?=
 =?us-ascii?Q?KTIYIAQ3TjWZh1mI30GBB1OjcYGCnL1wbGuVHj1a81xqN7vNznTqqkslXitP?=
 =?us-ascii?Q?XWNSv9sAxBPGJkWLLrAWWYwvmtiiR+Bs7Z6B6r2pgelaxcEylgrlCIjIvCGP?=
 =?us-ascii?Q?48UMMja7M1U4NjaxYIuHXD9bA6Mh5P5u8YPxkPdB7weckZ5Al8V32vaKwaBc?=
 =?us-ascii?Q?DG+uP7KQH1K95nTNjNiy2Jpo2p0la9vyBF1ETLicIVxPoh+I6/rAY3etcDhR?=
 =?us-ascii?Q?DWNq4IFPjpnZpbBaoL+paLbpWHT2APGZu2RJlWeFrJ8294fvufoyUFi3CKfN?=
 =?us-ascii?Q?O3hogUGgNXM0tq30qW/C4adB0vRua4yLyZ3QeboNn6jwLGZre6Qb6Dnrd07w?=
 =?us-ascii?Q?VJusDBTa6dsptJpeXDjGHkFGsAKmYiri3OgevxrsA4QGTgjqeNmtKFaSdLoZ?=
 =?us-ascii?Q?Ruv+6m6WS5RCzee0n5skxkXnple3yXRlg8jVcBeHBEribXj+82Byf2p2TPmS?=
 =?us-ascii?Q?MRfPEyCIWXIiP9JU9mf8mY0n8ALXb3dli4cfI6roAOex0jVM20XbOu1W9qR3?=
 =?us-ascii?Q?VlnpaKoQQqzQDWcX1h/M11D6PF4QdNXVOGsra7drApO27NUS24VtJIDAs6aO?=
 =?us-ascii?Q?lgaz0yXQsCOs51GGIgeWBGed5KyDb1J8n1w2cp2yYS0OHgQoN32Vg2uKrNwJ?=
 =?us-ascii?Q?Pc91X7/nyhtuDy0A/IK3eELTFrXhNOLJos9M9hQ0SAYNMcLGc/OPNmgeBt4T?=
 =?us-ascii?Q?2iOpwapsOgWvSRlb35YLHIrfIvaRsdwRdIQjVLpl7dBgREZZnvmUJ0wow8Th?=
 =?us-ascii?Q?eA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ea99427-8559-46d8-59f4-08db313f3bc1
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2023 16:53:05.7931 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g58fRQTu+2A5v6aBtBspjOp+ZYEvv0Xw0LGwcsY9p+aMudq7SbQZXDYtqaS6i/PcuBPMPsqjPQz5200NXO9Q7gjlx98rGQhiL4JSrEH2RsY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6126
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680195191; x=1711731191;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=A4ook2tFXUg2QW8W1FrdtvEHz2lEPzy2FtBR70iUleA=;
 b=Lij2CwdjILNNYfAeJNmoAEKElIMcypETvkJc/rEVMFuVEfLUSY4CJ5Tw
 NXsn/YqJ0ck+qEdDM05j7X50IQCUs5WHT2xZRbqNrXPuglH86jZ3jaOYy
 89yFv9tgFYeaJx2esJNEC/8Lup2b80icgg4RPPYI6u3q9iyrIFKrvARu3
 3dLvSCeUZM6KvLgU6IVpyIW+hW3X4gwkPgdn2YcF51Kc9PfsAEdej/PTA
 it4Pw5otThxM4Z1LUWN83dj3MxfcLWVN+Oe6D0WdarGyxqCis1Lj3fGtf
 57VkEZK4ZMH9V/vqUfcbJKVkUU5iD3ZLmC5GFtkgWEtKqhPotHli53pgy
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Lij2Cwdj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/8] ice: refactor VF
 control VSI interrupt handling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>


> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Simon Horman
> Sent: niedziela, 26 marca 2023 15:36
> To: Raczynski, Piotr <piotr.raczynski@intel.com>
> Cc: Swiatkowski, Michal <michal.swiatkowski@intel.com>;
> netdev@vger.kernel.org; Brandeburg, Jesse
> <jesse.brandeburg@intel.com>; intel-wired-lan@lists.osuosl.org; Saleem,
> Shiraz <shiraz.saleem@intel.com>
> Subject: Re: [Intel-wired-lan] [PATCH net-next v3 4/8] ice: refactor VF control
> VSI interrupt handling
> 
> On Thu, Mar 23, 2023 at 01:24:36PM +0100, Piotr Raczynski wrote:
> > All VF contrl VSIs share the same interrupt vector. Currently, a
> > helper function dedicated for that directly sets ice_vsi::base_vector.
> >
> > Use helper that returns pointer to first found VF control VSI instead.
> >
> > Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
> > Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> 
> Reviewed-by: Simon Horman <simon.horman@corigine.com>


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>




_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
