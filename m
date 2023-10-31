Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 56BE07DCA9D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 31 Oct 2023 11:19:44 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D91D68352B;
	Tue, 31 Oct 2023 10:19:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D91D68352B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698747582;
	bh=dkVTmRJqzC+85YoCj45D2/XV66BFvfa1Ntofma/1Cns=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=lkz2T6IDSvv6QCUv1zTD/t3g18/B6XJ8bePwZ7i19UmToqc6LfLtmOlaRUBHNoFRe
	 XdL/sa1BUUtyRz9IMmfL9KU4bpnEIeQIymfftqCZQj7TWS2+mdgTtEQG9xb4RUkjyx
	 300w7PH0JXd14UrbMCw9Wgo4fuTfeZ8xmqSdeg5qI4QvyT0wOmPwYH2Vw1mRmhzO9p
	 rNsuTqFJVwv9VuqwfTLOeHCwNnvQYJrdbJCsmI4uQIjsZSFFLk16XoyhPlHgjpxHa0
	 mOljMi3rmRI2gN9VJEkjtkMTraNIKlhVrjdfc7UP0LdctNacXQwtpIB4JU9ec8Yg1k
	 aU5h1PC9N+fxg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id yggrwBpeGKvt; Tue, 31 Oct 2023 10:19:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id BE98D81BBD;
	Tue, 31 Oct 2023 10:19:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org BE98D81BBD
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 934A31BF2C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:19:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A04161263
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:19:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6A04161263
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id waXDhWtEdzSK for <intel-wired-lan@lists.osuosl.org>;
 Tue, 31 Oct 2023 10:19:35 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8C55261221
 for <intel-wired-lan@lists.osuosl.org>; Tue, 31 Oct 2023 10:19:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8C55261221
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="452532382"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="452532382"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2023 03:19:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10879"; a="884161607"
X-IronPort-AV: E=Sophos;i="6.03,265,1694761200"; d="scan'208";a="884161607"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 31 Oct 2023 03:19:34 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:19:34 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 31 Oct 2023 03:19:33 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 31 Oct 2023 03:19:33 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.41) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 31 Oct 2023 03:19:33 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=eTDZ+d1PTP9M61HmbZJ1M2MJeD9OlBZYa/R4rFamH46eJE87ugM4BCncHA3l3mNjr1IJqdHk8RpTsD6GsPF6BLo54whPr0YF0+nbKclJmeIbOS5Fpje/VUAaCrdR9mmecIPKbqNPeh5BQbzX1fcv8bK1EgzJDiv9oyS1Da4dGw/xc9VmvWexPdJ3g55hwFIX4HgUspi0TVHKCtYnwXuIT9u8jXFZOmGC5FjCJlP19PH3Vw/KDu+321lcZZYDgm/musMIaGwkYxEvHhwbFnv1K9Zz7WFpme95ft+3wZavTxs3GcK1NGOFzHvv6MNE6Ifhc8C02GgRFBKwZSYfJKKVLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cVwhfubsqg6f/dwzlmhwpUj++2KOQCeVNirMM1/ujZA=;
 b=PDARF60DRLOwN9aqVWaReVdfAP0ma68sNho3CSXco/rpc0UIw7gj25gpaS8l5zC0PVQpAjRy+ezIl1Tk7dJslJaaSBfZFapyiMbtFq0XoElaNQeij0oIcUOkcnvF2rXtwbkhP7U5WIYmD2AIij4z+4Kc6ZbjPE3LbJSjV4RZZe+wt6W21CoYxAwf92G7C1BmqRUWdTVVQ8T2RQepdDr2DIb08VKb2cDNJgQxVByzc4pRk75zPpguXYfbUh5vXnVgp7bMeQwiBVU/hjTfjRelA0EScBfVIaW3RDEal1byFuQ5Zh8j0PlGT2+jZosGyl0w1ie5RnYcu3jQvfpIeHUM1w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CH0PR11MB8191.namprd11.prod.outlook.com (2603:10b6:610:181::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6933.28; Tue, 31 Oct
 2023 10:19:31 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::7911:8ae6:fc73:1097%6]) with mapi id 15.20.6907.032; Tue, 31 Oct 2023
 10:19:11 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: ivecera <ivecera@redhat.com>, "netdev@vger.kernel.org"
 <netdev@vger.kernel.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next 5/6] i40e: Consolidate
 hardware capabilities
Thread-Index: AQHaA40FwBuQbZzlXUGl0NkoigqYKrBjv95w
Date: Tue, 31 Oct 2023 10:19:10 +0000
Message-ID: <BL0PR11MB3122D8C0D45F0120DA6BA637BDA0A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231020193746.2274379-1-ivecera@redhat.com>
 <20231020193746.2274379-5-ivecera@redhat.com>
In-Reply-To: <20231020193746.2274379-5-ivecera@redhat.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CH0PR11MB8191:EE_
x-ms-office365-filtering-correlation-id: 5e1f1f02-726f-4b51-c880-08dbd9fad31c
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: LpfyJyrpuC25Luq+2fWoKMArUeiYu+6Q1Qhqmafmcqu2vJVKQJERLxvMxBerGdHeZDPh8wUibNlW/ixkOb/0TJDRF2EFAdNc2/b8t1G7rzU0Ee734gqwb5uauT2oZ5UxynuKS1dJOO3CH3Jc3/Oi15djw0SODuUASRpOnTxAVOyDIvbq7PRWdNUFEMmVCegraWWF9rj9hrkSSDADLp+enZT3A4p0TRW9b3toHkfjVfyPSeY9TL+XWYVUwbZk/zrsB2wUEYnOUkhEfY9ogb9quZdfaI4mPlqWofxn414zoTCyaghyqTcoGd+156ifyR6z0LmEzW+43RfA0ncexQalCEQ0wM2zT/SqkvnRzSR7nVwDBWHlA2KP5+Bv3mG8Mr5XadxWOEnD/AQChOYlD8ngld3rdzhqXp+HtoX+h0nghFuSRu2MtrYvWEpfEN0rO9kR0D6HekYrDgu2fRoJeL0bVyFI+ZCY3hvgMS5KUvVfIW8QDbTI46wOIDqwVBJ+Rvlg8imVOa1Cfi9revK7zcUhld3XRplh9HSfuyzy9OOxtkVVVLjMBM1Q7SL7vYXgFy7saz31lhv8RNasef5phG+Z9j4rOnHeCQNq3ZUvyX/v+P2KYAmAHWv2zpLhh8Sw0E3r
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(136003)(376002)(39860400002)(396003)(230922051799003)(1800799009)(186009)(451199024)(64100799003)(478600001)(122000001)(5660300002)(4326008)(52536014)(82960400001)(26005)(83380400001)(33656002)(38070700009)(55016003)(71200400001)(8676002)(86362001)(38100700002)(2906002)(7416002)(41300700001)(64756008)(110136005)(54906003)(66446008)(66946007)(66556008)(66476007)(8936002)(316002)(76116006)(6506007)(7696005)(9686003)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JJ3SaNJe+GW8C/pLmS9c5Sx64/4QWtWCgIgymY/W9cbTCY0pv1YJ2ZhW1s79?=
 =?us-ascii?Q?CnlQc2iauAhvsLt6amRhy7sTEenpEoHMq6ZZXM4YvuAufFzp5/a5D86oXPs9?=
 =?us-ascii?Q?Ej+FE0GpDTflDmFSFis6IZszW6fzRRy3rYvoMWh61F05gMk4+EOXA+PJ/gA2?=
 =?us-ascii?Q?hzNNd3i6f5ctna5vKlTZP+l1Xa5QLExhvkRRVVxWjLZbYE4bESmKVrZtv5kA?=
 =?us-ascii?Q?UzwTWSvOrmbAiPi30iknf9NQHfhwJtpR91cD0MGsQQn8CQfkG39eC/5Ksr2J?=
 =?us-ascii?Q?XkUIbV10QD4CvxG5LCXRV3ulv9NWpNxBgzM7rykEK9oIdAvUCALkexfRWRud?=
 =?us-ascii?Q?w9wFMhgE6XCeddm/3UabcD0pUV3QcHKCW76ibXVWBEt0x7/Bq+Qc/kF8YhoC?=
 =?us-ascii?Q?18RFOaOo8fUz/VY1U+pLd7Yp8oxVuFsxM631BrlDXgxHz8inlCndCz43n6rE?=
 =?us-ascii?Q?wR/QzJL0mBc4MC8q0WP262ws+IyQfXMQmjReFh9WvzLKitT1bwRaF34ylNGm?=
 =?us-ascii?Q?dM4fP6Y2HPKirH4f/GkYuz5cKgYy/VGANWhGyMFNZpSFuKzobwA0/LzPF83q?=
 =?us-ascii?Q?zSACLxRMyhtHl3n2BvNUJ7CB0P0DTlrg/PN9+XZpdwhXWivPqkDM9eoi8i/5?=
 =?us-ascii?Q?WI+SmGU7ykQJV+SLT5khaiOL0If9DYAn5utk/NnDqcSbp/6Em1pRD5FwGscm?=
 =?us-ascii?Q?D0vfB+gFGvN+CIBA2otZUK515rCsZaGL0BjgzAt9F7QybTVa+x4SvD0QqgOA?=
 =?us-ascii?Q?t7ft7eGfEttDRp7Mjc4NFJp0gm5vCU/CLwp+jo+OV48cEgpHtX0T+AaM0T1z?=
 =?us-ascii?Q?Qat76YC3LZ1NtZgqyL1+7QGptFQ/lFayfTKpLu1RuFW94QbRGH0VeLFmHf6i?=
 =?us-ascii?Q?AIXooEc4qcPLH3Toi3baxCqRx1v5MXx1zgrc4EEKGyqhuwa6PvZaFLFjdXX8?=
 =?us-ascii?Q?ldQQRYEpEQHWLYh46FeFvFbqBwaMViTTAkYV5weWthgHD/eMHbdfa0aM4tSS?=
 =?us-ascii?Q?NQR3cHar6/Q67KhsduKpKx5tDziLMOe1sXd5rqW4aL4tnXtcKprdnJwyoXf3?=
 =?us-ascii?Q?5q79pannMbJO/GugofT3xyrDZHyXLMrD6D4x8VC8tNmaLVfsgj2hnksVyHLW?=
 =?us-ascii?Q?FozKnfTDkAJ2SzgCYqtWKMb/9X0PpCF4rePYkHVKkkK+spanq+9QiV1o87/O?=
 =?us-ascii?Q?9m+RDlvRz732IXDTE3E3AV/1vcYfGcyWM7sWeyxghnBdeFJC/JFaXyIikq14?=
 =?us-ascii?Q?8e6veG9anMQQt6IVo+EJMqPX0IRgG2sv2achWiAPbxT7Aj6sneUwJMfna4MS?=
 =?us-ascii?Q?n4UcmlMbr+8ngNDUlH92JeQLc1VwKasK/XoYI71g26iXiafu0z7Kmf558xKm?=
 =?us-ascii?Q?pDfKo3+U2nFRLlGxxYoPaxylJuAUQjv1TJFIgiTOrVriWTSOM+QVJpsjOThj?=
 =?us-ascii?Q?3p3E1Pq3joWBd4J3tQ7TZ2BbpKaeS51VFkTha5RwtmyEaDDhDZwsTB868oun?=
 =?us-ascii?Q?fLHt4YBfJQANkzFL5Ya0T6V5lRiWkZX7G7ddNVc+l7Ub6lix9mpeMhjTGfQq?=
 =?us-ascii?Q?At45abeLL71coEbQZytdvra0AGCB3TzlYh8qOwFT5lTxM7k4Yj1y0TW+WrOa?=
 =?us-ascii?Q?KQ=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5e1f1f02-726f-4b51-c880-08dbd9fad31c
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2023 10:19:10.9609 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: b6H5OHvTMkg+dFHIp3bCytUE5iKVgMxgZeKT13rb0G/rVUinqfjkPvBDTwWeaxJsUOYyRaMFbpcS3GbAvKasQVPACu5wgevHgnu+nHIKsWBN6fhAfKlQ31dgRizsKmcN
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB8191
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698747575; x=1730283575;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=3kak2kcDN1N6CUv3SHKWyhZUrppV8KIGjcftFJo/jJI=;
 b=AiguhTe4h266jwkccolbNYlFE4MDbvwKYyETkOeaBD+3JOFiswWiHyMb
 K0hBoIO03M60U0BPBkr1e/sGGZRmJ+a6iD6oauMbpP+iKi6UdRSzAH1Xd
 6tO6FTTJUNlqCBIzO6tfsumkzTYvcCWI+u3Ta7RbxIW2eIKxjaUEfTAZU
 9ybaKNbbbr/4o4mZsS9H86PzDyoSAkybtbY2kk/j0ybmybbfeBqh0pJUU
 6Qj+DNVhU5lFdspYBiGEGYTABjYJLlwOLCvJ6TTFT25Q2/sNVY4SKIY+v
 2WX3yQ5q7d2picCM29rHLtNEiPikGBuiow/fg1uMtffzY9VRWcK5o1t1M
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AiguhTe4
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next 5/6] i40e: Consolidate
 hardware capabilities
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
Cc: "dacampbe@redhat.com" <dacampbe@redhat.com>,
 Richard Cochran <richardcochran@gmail.com>,
 open list <linux-kernel@vger.kernel.org>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, Eric Dumazet <edumazet@google.com>,
 "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 Jakub Kicinski <kuba@kernel.org>, "Keller, Jacob E" <jacob.e.keller@intel.com>,
 "moderated list:INTEL ETHERNET DRIVERS" <intel-wired-lan@lists.osuosl.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Ivan Vecera
> Sent: Saturday, October 21, 2023 1:08 AM
> To: netdev@vger.kernel.org
> Cc: Eric Dumazet <edumazet@google.com>; dacampbe@redhat.com; Richard Cochran <richardcochran@gmail.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>; open list <linux-kernel@vger.kernel.org>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; moderated list:INTEL ETHERNET DRIVERS <intel-wired-lan@lists.osuosl.org>; Keller, Jacob E <jacob.e.keller@intel.com>; Jakub Kicinski <kuba@kernel.org>; Paolo Abeni <pabeni@redhat.com>; David S. Miller <davem@davemloft.net>
> Subject: [Intel-wired-lan] [PATCH iwl-next 5/6] i40e: Consolidate hardware capabilities
>
> Fields .caps in i40e_hw and .hw_features in i40e_pf both indicate
> capabilities provided by hardware. Move and merge i40e_pf.hw_features
> into i40e_hw.caps as this is more appropriate place for them and
> adjust their names to I40E_HW_CAP_... convention.
>
> Signed-off-by: Ivan Vecera <ivecera@redhat.com>
> ---
>  drivers/net/ethernet/intel/i40e/i40e.h        | 27 +------
>  .../net/ethernet/intel/i40e/i40e_ethtool.c    | 36 ++++-----
>  drivers/net/ethernet/intel/i40e/i40e_main.c   | 78 +++++++++----------
>  drivers/net/ethernet/intel/i40e/i40e_ptp.c    |  6 +-
>  drivers/net/ethernet/intel/i40e/i40e_txrx.h   |  2 +-
>  drivers/net/ethernet/intel/i40e/i40e_type.h   | 18 +++++
>  .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  8 +-
>  7 files changed, 85 insertions(+), 90 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
