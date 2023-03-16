Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 334F86BCA6E
	for <lists+intel-wired-lan@lfdr.de>; Thu, 16 Mar 2023 10:11:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B4BC881F50;
	Thu, 16 Mar 2023 09:11:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B4BC881F50
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1678957863;
	bh=s9/3AHcoBJi7wsggQA910dz0FZxtOVJ0F4VIAx3ZFyc=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=flGlygNswRUP5pPP4JyUhCgg1UMJ3vBLaYjIjDnfd34G6KMptWDjTTee56L6RfsBe
	 nrNM7IEtbel2lTyyWpiJ7/p1chs6RP9RrlQjO7eWQYRuo9Csr4QrIVxkQpUJLAFR52
	 9waEZEfpmNpH2EetW4lWMNK7G/NK4+Kepqhwrt5nNoqlbmKvxQ3VITr7p6Vyw2erVP
	 BVJ7oRsVbWNq43ReOTlWaYQp6ja0FqKPevomvs0domb78nhPXbVyUgCOpHDaKbgL+p
	 nemyBINvtuODd/qROQu7NV8jXDQAKUwDMsR7WRgRJqE2bBTkRqxIx3FX/Dc+y+Q884
	 vt3AZ7JC1rnLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AZiD_s1nWWa5; Thu, 16 Mar 2023 09:11:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C0E8081F4A;
	Thu, 16 Mar 2023 09:11:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C0E8081F4A
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 113611BF40B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Mar 2023 09:10:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DB916414A2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Mar 2023 09:10:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DB916414A2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Ov8WrkgPXW1A for <intel-wired-lan@lists.osuosl.org>;
 Thu, 16 Mar 2023 09:10:57 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D4A39410C5
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D4A39410C5
 for <intel-wired-lan@lists.osuosl.org>; Thu, 16 Mar 2023 09:10:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="336626107"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="336626107"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 02:10:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10650"; a="768860608"
X-IronPort-AV: E=Sophos;i="5.98,265,1673942400"; d="scan'208";a="768860608"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by FMSMGA003.fm.intel.com with ESMTP; 16 Mar 2023 02:10:47 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 02:10:47 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 16 Mar 2023 02:10:47 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21 via Frontend Transport; Thu, 16 Mar 2023 02:10:47 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.170)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.21; Thu, 16 Mar 2023 02:10:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OGfH1fR9+KIA5/Jd3a3cjVV9zkzlRziVSC390CCC+fLd90i0h9zGi6cEs/XJCtDe9hS/hNfLeh75mhRlvEJqW60gkHStjoWZCGqQo276Lt59ZonymPD4rZX5EPFDqjn+R1rL2pHmedW+xYkcWUbpfDelWBOMW3UNElF2MOPGSbfdCRVG7vLk5XSmKKNr910O7hJ16eAB+EtVJ89q8J6tHa8GY+UIU9tM+c54h0oAc8MLvBQdrEJHODxAB4dezUcq8V12RwkpRagUsFHr8ZrNXVoSiE+l3KAMeWltdwr2wiDDZsuMsjgmn3UE8iqicNIUeKKgbkazuWAYD9sUYcCg+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=X8b5I0tj94953unQxWSAaRBBNVDvK/PuI3hf9hJobLY=;
 b=b6hMqB09wVbAbJSGF+XmZMphWgJZ4syFJB4ExSz7UzzKIbfbZTLhOx1/bKHlPyuufRd7ZHrBXd8k2muKTVykxZpT/ci+n/VaDRl+HL0LBETJ82EhISZyZDd5Hc0HRxN3Ng5K+MLTF2Xtqvzwf6a52tR36rbgintq+Td21paONdApr3VEP/2vbVoF7rZMxFeExc63XbZHYsh8J+7k6saBNYLFr00rdWIrz/N5VV0y+vJDc+bPYg0Ht8NlR7m0Sz7/ArQSyca8pNmi69nrvrQqGymJm0oFXZBY4pymuIWcc58UQnW75NhXVQr7NrLvkHxuntnkiaxi6JAZDC9SYP6K+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by BL1PR11MB5222.namprd11.prod.outlook.com (2603:10b6:208:313::13)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6178.31; Thu, 16 Mar
 2023 09:10:43 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::b9e:ba19:9c2d:3958%6]) with mapi id 15.20.6178.026; Thu, 16 Mar 2023
 09:10:43 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2] igb: revert rtnl_lock() that causes
 deadlock
Thread-Index: AQHZUQnWx63OmoSYF0yW3IDJ4hRRlK79K5qA
Date: Thu, 16 Mar 2023 09:10:43 +0000
Message-ID: <BL0PR11MB35214B49D888E1329C0A54108FBC9@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <ZAc/3oVos9DBx3iR@calimero.vinschen.de>
 <20230307152917.32182-1-linma@zju.edu.cn>
In-Reply-To: <20230307152917.32182-1-linma@zju.edu.cn>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|BL1PR11MB5222:EE_
x-ms-office365-filtering-correlation-id: 8422ad84-9e03-4e4c-b7bc-08db25fe5261
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 2g76yhMlmkrdQwlZRopz8tJo6BJOfasTTQj74pyD3qe1cHUVWDkLWGGg4MaNPIE6ctSZoZOxrKfaqr4/+3kZTmLuZVnWGV7nms/ab+JF/rf4lCIOhmB3djquWcHcMZzhQUoRWiMIDnaYgcIidwZuodDza8DX7wBKYul04e91aHi22JRE71R+og3G3s8DxeMuxu7A61Zqh1gRQOiu2o2Ty6/KjNznHLmlaQRSFRNE2SVasNZ7FU6wMhgJPsZqRqMvxcOr2ABIPfp7SPuyMT0PCkscKIFrcV+3oZKWe3aknrlCOqEDycAjziKf6SIIR/pve7V18c8+ABlLZjiDyY8yBg7nPlSufyawrTlMMraLFIjzDUoFFCV9wCCozyvcU9QRZogpVGjKOFdjuQzDHtHZ+PJG3D7iJLVtqC9/H99EnmcfGD7BkTJ1kbD8T5LfkJothaW77yRubFk+RuHj7cZO7bv32uTn773grHn0Ow2DbJx01+Z1XIaZrGUVA9eZNtXy3s6AJPpUQGBoA/SP037cFdlgfFRV3iQdmV+k05KIz+E9qCdR9CLCVksYPEi/EnLAL4Q00gTCOhaZQK7pGX5UDDJwAC67lWk4BYiJFYyPzrxk6RDLkXhfiBkV1YyJCoZWqZBpG7HNuBxtwdMhw4KU62L9Plkm+VEc9GYIJyISIbdXWmhuH6uQXs9AEK8lh1CzF2mPZ9PgE7g/8vW+pc7+zA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230025)(136003)(39860400002)(366004)(346002)(396003)(376002)(451199018)(7696005)(71200400001)(9686003)(82960400001)(478600001)(83380400001)(316002)(6506007)(2906002)(53546011)(186003)(26005)(8676002)(6916009)(41300700001)(8936002)(64756008)(66446008)(66556008)(66476007)(66946007)(52536014)(76116006)(38070700005)(122000001)(5660300002)(38100700002)(55016003)(86362001)(33656002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?5dcsjsT/2H3zcN5GwS/2vJVsRbW411iQK3mhl5FK1CspSbEfjZrN0TjP6CW9?=
 =?us-ascii?Q?iL9ULBHGKpkNSTEA7GYY6N/Gh8U0QzwSg75rbQYpp9AzXQutx7ci2RIcao+P?=
 =?us-ascii?Q?jlkB7BuFS00yXYh+tLNVEwaOI8Ds2zGGETsOiSDGjH4YYsAeANt7Me8HMqY4?=
 =?us-ascii?Q?jsfRdPtlfTN3L0h7f/tpAu9zjIfIvSAmJDDHRsWMGrjotMbl+p4TsybOzwlY?=
 =?us-ascii?Q?v2khD31zPLJnW1XHTcTaun+rNLzMJ+jhXQ803878QtFsiCNBcdwflzxK+v4O?=
 =?us-ascii?Q?fA78kNupIU6z1dB2JZGeAzluGkLRUHAliB2rSTdK6cGVoRj2IRMNRfGbYI74?=
 =?us-ascii?Q?39gUWmTAlblPr3oX7828Ib7iayUPp1jz+4a43o2jR/F64ea9+VoQWAsKlxxU?=
 =?us-ascii?Q?Gbx1NKbTeLec3KWdxjlhcMJ+p4y8Yhu0niu2R5eugNFgUpYWVpgAX/WswLWX?=
 =?us-ascii?Q?Gr988YHPCGQoO5oymputj/ICBEUijdvjj/wMmYt/LO1Rejkzi6XxVVNMYkw5?=
 =?us-ascii?Q?NfqvOVERhAQ3gCRYsnI0vXYkva8MKfEqXP11G/xRyW2+wmXvhClLAoAcjaIe?=
 =?us-ascii?Q?qqSox0Bt6BR3YurOzxvmlHe3fFDcfzioaEtocqXtCn7K7Gqw15VhH+gkU+Zp?=
 =?us-ascii?Q?pQRru4Xy5yK8Ue6w8XPxgRaoTWAAviVW5enDVQoLBbi3M3QX0PkXVca0dlTT?=
 =?us-ascii?Q?KRkDLtwsM0kv+BKm7ZVvmmsYSZnb2hjwn70G66TUvUbAo03qMhKq0zO0JCkG?=
 =?us-ascii?Q?a+Eo8F/IqABY5UWEhaM01E8ZNgtLMYrj36TS/ut5ejSSc6LZzJMIBnGAo17d?=
 =?us-ascii?Q?maeF3p2wMrApnqnFEY5+RfzAXkqD04VR63spL6kkZo29FpcnJk3O2kEl9OMI?=
 =?us-ascii?Q?4GECztk4mKIKmtlLSI9VAFHMFPOlB/etCjbvjK1xS2jYh1V3SUiWPHJ47bp8?=
 =?us-ascii?Q?Ly7PThsuEnkGD914IkMyFHol1Jwkb8NgtLXIjL00Z9T8Fhx+f0qMev/vGP3E?=
 =?us-ascii?Q?FE1AEqc79qpVLbkKdQ7X2OnyYf408fpdzFN58s/uSZsKkEy0iEoOw0r40Ub6?=
 =?us-ascii?Q?KnQDaAZJjGLj+EHj+ZmHLlVPi5TON50N2EZSv97zetL8ap2oW4khiDkJrESB?=
 =?us-ascii?Q?cf53DMX+TVcgXxQ6Ws6w0SP/cYFPmQvLvX5kCxZICkBeTNbCYxJVLXK0CArJ?=
 =?us-ascii?Q?vYxBZp7AALMSEJJ+TUMZ25Vck/hSfIuEEyGlXy0lb3AEtBYPh5pQ8DcQvCM1?=
 =?us-ascii?Q?QqQ7GRAO9w1e1P6j/zxCRS+rUEWRXYF1fkIsGaG2PDPmcTn7XL7A3mfA4HTo?=
 =?us-ascii?Q?rVYMbiE69+v63QGlXzh9b3Z1ZIdLn5qYLuo8BVTVjeqI50OXpceaKs1Ksr/H?=
 =?us-ascii?Q?eiCs0kRrrGsaLxDitpqKJx4GDTQSfSDDxOnlpVgNGdob/FZp/2u7IrhyKQJ5?=
 =?us-ascii?Q?HRZDkJuxwByUwkcI1I6rRtcCFHgDmPIjpxGvRUucS72yVfOLV2mO1mvRk5Rt?=
 =?us-ascii?Q?qsYQ2pKqie9WzSWKC6GZkgR0lFSJPOX0nWR5FXzbwSAx11r54Y4fUWfOtST+?=
 =?us-ascii?Q?qWOu6+MWd35XSC2o9wi4Ssg5BnBW9FpjDotOLp65/CEknsEdlAU/3tu0qJmr?=
 =?us-ascii?Q?cg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8422ad84-9e03-4e4c-b7bc-08db25fe5261
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2023 09:10:43.6957 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: xdh84ESnstT3wq9UBGFFR/gpXQMi+DeluogU8dOMJoxEL0A+o09AfDQ1MX/y4tOvBqMRic/h42XQaUVIolloLkp5u7O7gFGi16FSVKmg+r8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB5222
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678957856; x=1710493856;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=WfcChK0txn7+Oucbu5JwC21peeMzqig0IPD4tiGdh6U=;
 b=YkmPxuwNvPZsAWDO3vTxoLuUeFvJSvYNhn0+sPw5N7mFzM8VZZU43tW9
 y3xDhXSNR8n538yxFsMezHzc8JOEflpMOqCHGhhdNsLq2u0XxMsI70fTe
 xWAAo7infULDx7d1/PaihwZAomWh8Grk9Hd3WkbwQId0ABuEGlhUeUxlO
 7S0ENb0cblOpF0q25JjZgHUWorBhAxMOyaGYzqzeSuOGv7dgYdcqCasG0
 BHaDEaFKJWuEVo8ruU+T2KqnA06JXhI1k6+G6qJfCyMxeoUERRyFjLjjf
 HcrtN8swIsZ4WsKsplWRAKoTnyYN4GVwA7NBZ2U5r1mndz+5BOkkQm7ic
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=YkmPxuwN
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH v2] igb: revert rtnl_lock() that
 causes deadlock
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
> Lin Ma
> Sent: wtorek, 7 marca 2023 16:29
> To: Brandeburg, Jesse <jesse.brandeburg@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>; davem@davemloft.net;
> edumazet@google.com; kuba@kernel.org; pabeni@redhat.com;
> netdev@vger.kernel.org; linux-kernel@vger.kernel.org;
> richardcochran@gmail.com; ast@kernel.org; daniel@iogearbox.net;
> hawk@kernel.org; john.fastabend@gmail.com
> Cc: pmenzel@molgen.mpg.de; Vinschen, Corinna <vinschen@redhat.com>;
> regressions@lists.linux.dev; stable@vger.kernel.org; intel-wired-
> lan@lists.osuosl.org; Lin Ma <linma@zju.edu.cn>
> Subject: [Intel-wired-lan] [PATCH v2] igb: revert rtnl_lock() that causes
> deadlock
> 
> The commit 6faee3d4ee8b ("igb: Add lock to avoid data race") adds rtnl_lock
> to eliminate a false data race shown below
> 
>  (FREE from device detaching)      |   (USE from netdev core)
> igb_remove                         |  igb_ndo_get_vf_config
>  igb_disable_sriov                 |  vf >= adapter->vfs_allocated_count?
>   kfree(adapter->vf_data)          |
>   adapter->vfs_allocated_count = 0 |
>                                    |    memcpy(... adapter->vf_data[vf]
> 
> The above race will never happen and the extra rtnl_lock causes deadlock
> below
> diff --git a/drivers/net/ethernet/intel/igb/igb_main.c
> b/drivers/net/ethernet/intel/igb/igb_main.c
> index 03bc1e8af575..5532361b0e94 100644
> --- a/drivers/net/ethernet/intel/igb/igb_main.c
> +++ b/drivers/net/ethernet/intel/igb/igb_main.c
> @@ -3863,9 +3863,7 @@ static void igb_remove(struct pci_dev *pdev)
>  	igb_release_hw_control(adapter);
> 
>  #ifdef CONFIG_PCI_IOV
> -	rtnl_lock();
>  	igb_disable_sriov(pdev);
> -	rtnl_unlock();
>  #endif
> 
>  	unregister_netdev(netdev);
> --


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>



_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
