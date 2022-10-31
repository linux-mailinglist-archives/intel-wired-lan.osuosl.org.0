Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C4636131B7
	for <lists+intel-wired-lan@lfdr.de>; Mon, 31 Oct 2022 09:31:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id E671E402F6;
	Mon, 31 Oct 2022 08:31:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E671E402F6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1667205079;
	bh=PT1s214kJx1i2n3FL07+oyCrYURM5tiGB8bq4usUnik=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i/HeimF51rXyzxcY2oHrJkBLSNTDL9v5SLANW7kAZ23732SqJvQVze3PKGa06AP8W
	 dWu5PKKhC+QUkl+QtQZ3kfYB4kjw654unQ1pAv1LMaPRqtnKxZOVy6QNY5x5cPqZbW
	 RtM9VUAdTMSWQHiW3NZYCBdC4AFrzPa03NDahy5oxcjA2tke8K9stSdGDiPtum6n2k
	 5wdPJQZgG0dO6PKWkyqhmQPrVxc7CSCr4h6w3Wn1y6k2NbiyKZqN2nDR2pBL2Cu6Ad
	 2TbepC9MVkhS3sXs7c5MthENQ94U8ETUcZPbjqG3WLyR0ug6CueD9SdqqdQlA8kylV
	 ECobV/12bN0SQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0KQ_K7vTpKoi; Mon, 31 Oct 2022 08:31:18 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C84A9400F2;
	Mon, 31 Oct 2022 08:31:17 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C84A9400F2
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 8DE7D1BF2BF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 08:31:12 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 661A6400F2
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 08:31:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 661A6400F2
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id xGwg8rD4CT8B for <intel-wired-lan@lists.osuosl.org>;
 Mon, 31 Oct 2022 08:31:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A7E1040122
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp2.osuosl.org (Postfix) with ESMTPS id A7E1040122
 for <intel-wired-lan@lists.osuosl.org>; Mon, 31 Oct 2022 08:31:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="309935662"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="309935662"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Oct 2022 01:31:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10516"; a="584588005"
X-IronPort-AV: E=Sophos;i="5.95,227,1661842800"; d="scan'208";a="584588005"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by orsmga003.jf.intel.com with ESMTP; 31 Oct 2022 01:31:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 01:31:03 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31; Mon, 31 Oct 2022 01:31:02 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.31 via Frontend Transport; Mon, 31 Oct 2022 01:31:02 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2375.31; Mon, 31 Oct 2022 01:31:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioO2rGcbn4BgY8/AZUmaOj2u2Pkm/bXNwRPSiZGgpASD+Ds4FwEtmQtzK+6RUa0DL7/njC4Ky2umDJuWygin0dbY45Z031fUPP6GP1xMJ4u6ySyre6XX4qrLGPegZfrD9478h02MxfB1N6tabnBuJE54C8/loaLMz4Ryi5IUTcsYSu5AKEl8WfH0ObKRM+w/zGE1vFHboYzKVnOa2JeRA2PhgRxZhcJydG9gJeNiyBL6BuS9WnaZzBgajkH4Zgc5KNQCJFCRrPyh/8R3oZrAogyIYkLiIjwFfFNqEDo/BXi0jl8jQ7D6y0SlJB6hd4hOlSsxkGA5sAfTctC9T0j8rA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iM/eDqm5fvkC6Nvx+7zrHZrq2n7bmeay+v+C9QxqQqQ=;
 b=Oh3pdYKpYTcQd0bEuSVeFIgbhIHs42dW4oUij9nQJ09do/9PvJz5f7lF2dPhV8XS+NDR4nzx5xKz01qfAI20xPRn63B3r4Wce8w/4Mm0puLisnXy/vhBqxntucJeOyuYs1qUVxQa4dEd5ygjSi2quCkyq4T8uhbzMgP3AcAbnodKMPA3hA1gKsjy3zvQPME66iIOPZkiUogs7MDffgnU9EfTKZRrnsN0ZdQ40nE0E/acsRTdyI9/AaXyijch1YWrAvcswfdUg/je20LSRDXhqAhTvHSeR5YuX/ny1sMuTvGVX8lLJ85W4xsMCisPovNj30Gcw9GpFkIeF59qvRxAhQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH0PR11MB5611.namprd11.prod.outlook.com (2603:10b6:510:ed::9)
 by CY5PR11MB6163.namprd11.prod.outlook.com (2603:10b6:930:28::19) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5769.15; Mon, 31 Oct
 2022 08:30:59 +0000
Received: from PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::866e:e413:fe5c:81df]) by PH0PR11MB5611.namprd11.prod.outlook.com
 ([fe80::866e:e413:fe5c:81df%8]) with mapi id 15.20.5769.015; Mon, 31 Oct 2022
 08:30:59 +0000
From: "Staikov, Andrii" <andrii.staikov@intel.com>
To: "Lobakin, Alexandr" <alexandr.lobakin@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
Thread-Index: AQHY6EM2VsfjYhLROkCs68HiiBkZfq4g4/uAgAdRfrA=
Date: Mon, 31 Oct 2022 08:30:59 +0000
Message-ID: <PH0PR11MB5611A463FA999509D6CA914C85379@PH0PR11MB5611.namprd11.prod.outlook.com>
References: <20221025072705.1270255-1-andrii.staikov@intel.com>
 <20221026164445.56155-1-alexandr.lobakin@intel.com>
In-Reply-To: <20221026164445.56155-1-alexandr.lobakin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.500.17
dlp-reaction: no-action
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH0PR11MB5611:EE_|CY5PR11MB6163:EE_
x-ms-office365-filtering-correlation-id: cb9e3329-30c6-4e6b-69dc-08dabb1a3cec
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BsIHwgMFipxqqoCoykPF5mwnDEywFmUPDta/WSzo4+gWjURKE0qLK7+CFam6bgUl0H3nA0KZkYaY7A3Y4lLlQFviCdWZXG5B35VYfHWs9hi8GzUYYe0zf+Apxq/l/JDHh9fPkhGKeJHzICu3/hJDv/DuTxVH7JR2ePUu9g5rl4KVyMI+cJT/f2vhAlqa/0kyYpwCExaVcWsG3ufXnPl79HkRbdRIaWvgfDlDiv1RTfVMIerrcgctTyEqcgGZiogIBy8Ey4GfLmfpMpReK7/drNJsfb+F8hK0vMoGI4AhDpKDrOSIz2GI19ob28achKKKAc48NVdYYNfEmHoDxi6zErF2lzrgBZTC91HkVtwcVdCpfbcnCCAFxsbVJ1roG3Q84D46gPPejDqC/dHe+vnlzrCz59m42rIC7vSB9ZiZ3ht0N1b9rebMasYADNSxtbre6gl5vjkwC3EvUpvIDl4+MPOWO0FW+d3Npw+w4fOZrSRwFiQ3zdpfcyml/Vuo1LL+soKf/Lnp/x6sLM6T1R8yLAMxVr2xIzRdJjzPIPBRuuRuS6PZR/WPXUedgHpXcUVIfOJMvPRvN5KUW+Y30zdDvsbZG3Vq75yN/zNSfPiIMGYA5mn/i6coZAlgAucv35enn/lnFOpiFTqKh4q3Io+/CcF13Sm9x1jDUULWKJhM4ouXrt68SCyVzNAKCirfXC5JDtRk5PJCeJF7ThWrgWweArd8FvbRmAgzv7+uvUaGBU0TribyjdyWtkbpURmrYMRDzCaRdJ+cJ1odTn9dSyHO/Q==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH0PR11MB5611.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230022)(366004)(396003)(39860400002)(376002)(346002)(136003)(451199015)(86362001)(33656002)(122000001)(82960400001)(38100700002)(38070700005)(55016003)(2906002)(186003)(107886003)(6506007)(26005)(7696005)(9686003)(83380400001)(66946007)(66446008)(4326008)(6636002)(316002)(478600001)(6862004)(5660300002)(54906003)(52536014)(8936002)(8676002)(64756008)(76116006)(66556008)(71200400001)(66476007)(41300700001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?o5soaXWeSafc9D93lxhF0Te2b28oUG38HWGcuXIcvdtEmYCRPFr41Y5MpiHR?=
 =?us-ascii?Q?BYdXOMeiqRoTZI9RAuHDU38UvQ/EOp1rZkY9zBIOayypvludD+/qVZFGkuE0?=
 =?us-ascii?Q?lhiGd3CcKnNn3zXczSv9DgxFWFxfT87Xei4Qw86TclAbb1qTEm3qKHQHFbZ9?=
 =?us-ascii?Q?dzQVXPiisTu1jBrSD3lEjp36lV9SHFIxb5RRf0iWj2OJXahFW48MIDBmgB1P?=
 =?us-ascii?Q?a08Z55jS9TuqYe+dXjl6IbXta7OylA4dCbq1FWoVgRnhJwj76GyhlNrNFQuM?=
 =?us-ascii?Q?g+pLwKKrBjhFg8uUeYFl6DE3qwrkEp9vRKMkzBfPhAcxJAgZ/roc4EWAQE1y?=
 =?us-ascii?Q?Gu01nIsAMDxb4CbYdxml2mzXjHmY+nshn1qgkXQUdZkW2ooBDM8TQUPzQ1kX?=
 =?us-ascii?Q?6okBmH/KHEbybQQnW/csnNqNu2UnV+w8qMzn1ItEcrPgih1YQ466NIvBsXWU?=
 =?us-ascii?Q?yGhS0JqNtUNAJWHDsjXpQ2Y7GwDNuSpyr+mlrA+BHaclwtOOGtQryJCTgrAF?=
 =?us-ascii?Q?hQ3piMIgLosrDIPpLnW2lz84IyCm16Oz9etBE5SL7AZpwp6ephoczoTKipPB?=
 =?us-ascii?Q?4FBCl2xemC4qY6xvjfJUvWp/fqDreCvh3KwVfvgg6rofzSSMeT9WbTwE6RPn?=
 =?us-ascii?Q?1n8+bJNY2UVnFWef//30nkpgRGem45gxAcOfZ4fwn/Bog6zWfLt7aMX/RUs7?=
 =?us-ascii?Q?4JOqbnD7JEQQfeuLfIFFPpCgjztnVI9B/f/dWgsW8Sz3UGw4CXSdPIqFFJHO?=
 =?us-ascii?Q?c4BiOvYQ45mAuT8pIke3lEVu1Da9u3nkICpHIZEWlOVA7y+WuLDglF/2kRzJ?=
 =?us-ascii?Q?QcqDgq4QF7wiY9KhsCqzadpCOcFKm6eo0FxILpcDh7Ck4VrhXcEDD9ULmw1C?=
 =?us-ascii?Q?Xcc8QwxvL/NPltLWef6JMZJuocX0g+TnWSP+AYuzCN12ydXqG63M20XJ9dBP?=
 =?us-ascii?Q?E8wRmuUYFZj7+5RdIrrZ8wW3Yt9nWEchT+WbQ/ORDh3cbqFaKtU2ickmnrEd?=
 =?us-ascii?Q?Lx5i5P1TtUsxnER4eMcHM+Uluax/tKMgjnwaMqtEe5dFFCEEOJRNB0abirFZ?=
 =?us-ascii?Q?zVw5E/z4WTbnt4LVX4Qiyo21dwEoxSUnvd4T38yb/15pn8mxJp9wgDZvoAeo?=
 =?us-ascii?Q?6b1PXQ6+42AlC1EOFdvAsopVptEAHwkXIkaZOsbm56onrRTG6nSSUDKaZjJJ?=
 =?us-ascii?Q?0u6ECwIikKGhWVku6JuuCuq528BHb6xa6C95OsTAcNXBVsrqR2Ekv2O253F5?=
 =?us-ascii?Q?2Hi1pgADjvnOSEiqmyMNE0arQAYnGYt7L5fza5374Ti+yjltdNFSqahebwcX?=
 =?us-ascii?Q?yKXMPjh38H6EjgVo1GyXqmPuLPE//zrVzfnFHulgMog4+XxPiTCfjXCwbFnP?=
 =?us-ascii?Q?NoEdIqzwtgwm++i4AfDjtrQ7xB5Bp710XXEMokNk6EbppmTCEEWyYmfHbfE+?=
 =?us-ascii?Q?nOTOT7ITmf/dyENu8Sx+zKuYdnF/Y/3HGf9pyIda8LDuQfMmArMZbyaMi+Rb?=
 =?us-ascii?Q?30G/ZVQeIcSmvUgkHBprHcpVMBOvcR+FYZbodeFc9OkWfILzP7YpCgqLBdZT?=
 =?us-ascii?Q?NDDFNcYkhBp0MEaqwS7SVFCp16z/ZGzzE59PO9ud?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5611.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb9e3329-30c6-4e6b-69dc-08dabb1a3cec
X-MS-Exchange-CrossTenant-originalarrivaltime: 31 Oct 2022 08:30:59.1861 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: g2u15zVlsD2KYe5TPdJaCxEkAgU+kikj6Lef1ePOEC1y9y21aaTnr99V+SLagWwzFPBvIn2WRP3y7QKdr65RiJpwmHluvRPzYCRmLp5rN0k=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6163
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1667205065; x=1698741065;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=LAuDkIe4R8nZ001P86/4Uracu+jynN5C4l9hpUAdqks=;
 b=IT860a0vIEac2Xtc4j9hljzK68A6L8y/ZfeNLoe5VWCevWsMueu+C2wm
 0Yhk19K5t9+K8lPsZ5ztqzXBRs7cDti8A6hsRAOLjUa8+SQLSI5aK7KgI
 Ra7cCkpHDT2ByR57Y3Hq8jAfiISKUDshMXr0f3gIK5pC/FvJcrJmR//6G
 786GmPQwu/kFmSs/uzrLsgU/Xmmka7C7l6OVeWf3mNo5AZLm/FcqbW/P3
 ur3z31LJQx01NCRFCr/hg+2WBOa7+LKtiIDmhnooq6m9Rj0r9nqqzoIFZ
 91dsmTIHdyPxSdKW65LfI1l5nPuPVXDVakLeg8ztgctRvjlN9NCuVPGiz
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IT860a0v
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net v1] i40e: Fix crash when rebuild
 failed in i40e_xdp_setup
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
Cc: "Dziedziuch, SylwesterX" <sylwesterx.dziedziuch@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>From: Andrii Staikov <andrii.staikov@intel.com>
>Date: Tue, 25 Oct 2022 09:27:05 +0200
>
>> From: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>> 
>> When attaching XDP program on i40e driver there was a reset and 
>> rebuild of the interface to reconfigure the queues for XDP operation. 
>> If one of the steps of rebuild failed then the interface was left in 
>> incorrect state that could lead to a crash. If rebuild failed while 
>> getting capabilities from HW such crash occurs:
>> 
>> capability discovery failed, err I40E_ERR_ADMIN_QUEUE_TIMEOUT aq_err 
>> OK
>> BUG: unable to handle kernel NULL pointer dereference at 
>> 0000000000000000 Call Trace:
>> ? i40e_reconfig_rss_queues+0x120/0x120 [i40e]
>>   dev_xdp_install+0x70/0x100
>>   dev_xdp_attach+0x1d7/0x530
>>   dev_change_xdp_fd+0x1f4/0x230
>>   do_setlink+0x45f/0xf30
>>   ? irq_work_interrupt+0xa/0x20
>>   ? __nla_validate_parse+0x12d/0x1a0
>>   rtnl_setlink+0xb5/0x120
>>   rtnetlink_rcv_msg+0x2b1/0x360
>>   ? sock_has_perm+0x80/0xa0
>>   ? rtnl_calcit.isra.42+0x120/0x120
>>   netlink_rcv_skb+0x4c/0x120
>>   netlink_unicast+0x196/0x230
>>   netlink_sendmsg+0x204/0x3d0
>>   sock_sendmsg+0x4c/0x50
>>   __sys_sendto+0xee/0x160
>>   ? handle_mm_fault+0xc1/0x1e0
>>   ? syscall_trace_enter+0x1fb/0x2c0
>>   ? __sys_setsockopt+0xd6/0x1d0
>>   __x64_sys_sendto+0x24/0x30
>>   do_syscall_64+0x5b/0x1a0
>>   entry_SYSCALL_64_after_hwframe+0x65/0xca
>>   RIP: 0033:0x7f3535d99781
>> 
>> Fix this by removing reset and rebuild from i40e_xdp_setup and replace 
>> it by interface down, reconfigure queues and interface up. This way if 
>> any step fails the interface will remain in a correct state.
>> 
>> Fixes: 0c8493d90b6b ("i40e: add XDP support for pass and drop 
>> actions")
>> Title: i40e: Fix crash when rebuild failed in i40e_xdp_setup
>> Change-type: DefectResolution
>> Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
>> Signed-off-by: Andrii Staikov <andrii.staikov@intel.com>
>> ---
>>  drivers/net/ethernet/intel/i40e/i40e_main.c | 155 
>> ++++++++++++++------
>>  1 file changed, 112 insertions(+), 43 deletions(-)
>
>[...]
>
>-	old_prog = xchg(&vsi->xdp_prog, prog);
>+	if (if_running && !test_and_set_bit(__I40E_VSI_DOWN, vsi->state))
>+		i40e_down(vsi);
>
>Please don't. Unconditional down-up was removed from i40e, we've made XDP hotswap in ice in our recent patch queue and now you're trying to effectively revert all that ._.
>You don't need any interface actions when there is a prog and you want to install a new one as well, just RCU the pointers and that's it.
>

Can you please elaborate on this. I am not an author of this commit so it's hard for me to grasp what you are talking about.
Are you suggestion just leaving old_prog = xchg(&vsi->xdp_prog, prog); instread of the part that was added?

>[...]
>
>> --
>> 2.25.1
>
>Thanks,
>Olek
>

Regards,
Staikov Andrii
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
