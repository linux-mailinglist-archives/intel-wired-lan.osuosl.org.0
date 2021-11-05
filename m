Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB65446131
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 Nov 2021 10:12:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D99BA81CFE;
	Fri,  5 Nov 2021 09:12:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CVArZSQT4_NQ; Fri,  5 Nov 2021 09:12:38 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id ECF3381C71;
	Fri,  5 Nov 2021 09:12:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 50B881BF3CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:12:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 3F91F61512
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:12:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DKacvIQebchA for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Nov 2021 09:12:32 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 8EF47605E4
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Nov 2021 09:12:32 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10158"; a="231817593"
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="231817593"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2021 02:12:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,211,1631602800"; d="scan'208";a="579436110"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP; 05 Nov 2021 02:12:31 -0700
Received: from orsmsx607.amr.corp.intel.com (10.22.229.20) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Fri, 5 Nov 2021 02:12:30 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx607.amr.corp.intel.com (10.22.229.20) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Fri, 5 Nov 2021 02:12:30 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.168)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Fri, 5 Nov 2021 02:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=m5MQdVaH8+Ph3W3JfVUagPTkC61iGNoTJbg2ewJIfb2hj4fSqYycCjTJf0tPkf9DhyxBIvqEUX9tdg3kgXWIxc0xM0mqmG4Tx7xs+Ur4/beGa59H3BiKQ5fVGa31RpzhtaadiifoW3kcCmZWEFFLUkIoswMG3h61Lq4orLSmOAlpNx7vhM9ZbTUI1aeKWGdW2slEpG+Vx3pmHmhHubqnWZcCw5AHXWGnPoAAiDzKOz6T3kxgkUcGgVvJ+u2UE+yBjz0geVkrSO8dQDz3Zird0nr59derSxCGbtNypRw9Ei5+l8TPCyM4GdI0fcPPA0/8M8CXYtAzBsmF9Es5VDgsIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NqXPJoA8WGC0cpKz6xNepYkIOb8LZoXkpTnRPtXwEjQ=;
 b=UFxdJLItAQbzThzyl4usiVIp6TH9QSxIwzc8JGvMZdRbXD9YIf34Dx2EgAQ4G4kUhuYdxV/JhH5TEti+oWOXwuhYYYxcy2x6vW93cWtsDvgFTLnbAGuAaMcbN6EjVK3Tp6u4gyCPJWewurM3xeCIvUhwGTW38BZpmYpB1gVnZmz8h4V9YElkxNx3iTTaH2OpdPEc3cWSPbEPYR4NqtlMpvUSim0z/LFV4DSwnvHunEvnEWrVgCPB5NPIavzYSSWGqGUWKERtVByqd/uBY5GFDXYG6EJdVlaBrRxLkMTyjhsrd2vTd28NEYUkE60UTRdHLvQIhl8BjTZyr4Tawaz9kw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=NqXPJoA8WGC0cpKz6xNepYkIOb8LZoXkpTnRPtXwEjQ=;
 b=bDBNhLjlFvrUjF43xiwgOOvc/HLhp9X2dw0Fv00oYwumF8OzorGECbGvMm+Qlx3ZRPFCXeSOwTOeP/2Y5RG8tslqMW5FsGpFkxvLhULkMM6osPZg7u6Nb/QtTu0MKsXUVK8ODZL7O5stN35dfRhr1lpCrycAHvgQK6X9aKSkuCQ=
Received: from BYAPR11MB3367.namprd11.prod.outlook.com (2603:10b6:a03:79::29)
 by BYAPR11MB3574.namprd11.prod.outlook.com (2603:10b6:a03:b1::27)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Fri, 5 Nov
 2021 09:12:29 +0000
Received: from BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce]) by BYAPR11MB3367.namprd11.prod.outlook.com
 ([fe80::d9a0:60c3:b2b2:14ce%7]) with mapi id 15.20.4649.021; Fri, 5 Nov 2021
 09:12:28 +0000
From: "G, GurucharanX" <gurucharanx.g@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>, "Nguyen, Anthony L"
 <anthony.l.nguyen@intel.com>, "intel-wired-lan@lists.osuosl.org"
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next v1 2/4] ice: use prefetch
 methods
Thread-Index: AQHXy2pVl0fdKModtUWJwMMHrbQjlqv0s4cQ
Date: Fri, 5 Nov 2021 09:12:28 +0000
Message-ID: <BYAPR11MB336709A4FBBF84BF112ED8B9FC8E9@BYAPR11MB3367.namprd11.prod.outlook.com>
References: <20211023004128.86999-1-jesse.brandeburg@intel.com>
 <20211027193836.372561-1-jesse.brandeburg@intel.com>
In-Reply-To: <20211027193836.372561-1-jesse.brandeburg@intel.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: cb5cad0a-abfb-4900-713b-08d9a03c643d
x-ms-traffictypediagnostic: BYAPR11MB3574:
x-microsoft-antispam-prvs: <BYAPR11MB3574CD7F94DC2F6935B8FAC7FC8E9@BYAPR11MB3574.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1417;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sjIiAFYO34Jw0C8K381nRIKvO9rJGNZHLwDarGAgRU9MGj2Sf0T9Dt/rvvl8q/rKk4LFXJgCnJ1U9PQPC/LejHfUeVXkw5lW5unOap3EM5LDBQxkIiSUcmyo5r56gtV4fFuuqWH9mDJw0OjhtU+8vpo+Sd1tyS50aNUtOGfjzUM/7ajSj137KSJ/+SbeytiiSCOLuYakoL+V3q5Fyv3gxvoeBr9/J9+31Z8kVCYntXH3gN1k4ueggsQySaU/Wju6gcaULazhMVNVXHUvIF15ksD9nHRwY8uxbLgL8gQqoQG67/B8yBmGdlr41iQspFBjoPl8WKJj+qzJDBb4Ln8lRQ7ksVlPcyKWIaAOU9JwvdeyeMLRl/PtktOmQ5MdYi6c/GUzjQGOHoHXs5sv9u6Dp5Ax4+SUFDGFHvwQL+i4KlLvkiNhIY7DOg7+Bv9+2gZjCILJ1oRnepFcI5D3QbHJq6SswBEpJzXMnN4zLvPSlyWjFPfa+3P8cVkdZQvJwyh3VW2TFXykWi4c0LpvjsDQCSYNjoMn1e4InjTUCMWn/OO9TviF9rjkcRH2Iw7UHSZnc+EKTPzawGOhcrqqdOS3O1WgIwwPBtAUlg6607gjwEBCkN/G7n6b3cXt1GwAt1K0DN2m0AMbKiIlYUaTovthDb5e1iRH/4TXiJaz/pdkkE8/IrAwYjDAQE6m6NLEipj3u/RgS+WQnRbJPUypkEdARw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB3367.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(186003)(38070700005)(7696005)(9686003)(53546011)(83380400001)(2906002)(5660300002)(38100700002)(6506007)(86362001)(55016002)(82960400001)(33656002)(122000001)(110136005)(316002)(8676002)(76116006)(66556008)(66446008)(508600001)(66946007)(64756008)(66476007)(71200400001)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?236zdcYDgPO1NBEJlOOY2ncF6lQV7+kLp4WA4XU3HSCyDH1jOc1Q4uMApFex?=
 =?us-ascii?Q?GsCfsQvNIgVWuEUxBzOUX4QYYSHDAdm02YyXSBQhK4y0ixVwvdv0qWuQu9Vk?=
 =?us-ascii?Q?wJRNhW6VvuqALyJ3U4sx7NLQvukkECNh3HbyjUOlW/MnU6gNZzW2zhQzMn+1?=
 =?us-ascii?Q?zWu/MRexsj5ZCJvuJk4MMx/PA28qWD1wPnCmYbRed5NDUEtP7gqZ8WJGexXz?=
 =?us-ascii?Q?Ej30vGvPes6LYs+7Ti+9aQAWhPNUlfhYzZC1LLss43kx/HUg0DT/v58IOJyB?=
 =?us-ascii?Q?O0/07jAwz8Hx7lt/dCvobDIS/ixG8Zkfkd7eRZoc6wAmkv7i4xlovSe/yHCU?=
 =?us-ascii?Q?BPaJzc4v9dK9r+Bjkenfg/ex6drGAj1o20C0tbrESlBG9+AVzMv2PpSrLV3K?=
 =?us-ascii?Q?PhL2IKPSEzoVfelWghHsIww0HJPWJn8BKX/NExy4qL/bz5P3s4I0ll59yT0B?=
 =?us-ascii?Q?/Xa/O4h+nUkgLCE8ENPS0BZDBAh0PvKc8n69WhSm5+LRw3CUXy67SAvg9zzu?=
 =?us-ascii?Q?fAS9U3QEYoY07TYHfe/m9pdfZt7yL33CODfDE8wEf0BabvRKIshz47U9GMbx?=
 =?us-ascii?Q?bz8OFc5hX1TErABHxZqnegiSU0d3CfOCJ8TteN21y62HaXCGTm7S7Whn1lO3?=
 =?us-ascii?Q?ZVlH3/ZFaZ0LKSDszvoter9vXWrk1CqFf6sF8ugEMlweqgrq7R/5m1FiTaI3?=
 =?us-ascii?Q?L8Nwnle7c5Y1T7IuxaifUplZaMjVmBIuN/P5EzXKRHJ4nQI4iSFbGWFucxi3?=
 =?us-ascii?Q?zbe3oePoMeITDj/rmU0P2xVSO0lC63pEv2v5+tWXMytpf6ssApsQwmq36dKv?=
 =?us-ascii?Q?vyh2qoG7TJRMOL0fQqJs5JSWquuJnAH8yaIUxtT+e/tLXKlKNhFqMM4KaGKg?=
 =?us-ascii?Q?mHPnrVUWWj6dMhMOzrY7Gcozt+7LbYIJV5uHnHozx29n6x6im1D7Exe5JZ6l?=
 =?us-ascii?Q?esDtQPNJVlkhe5PQT0NLc+6pEQ2yZBRFRNCMz2XP5/p52AKpYJ/ejyCPq/eq?=
 =?us-ascii?Q?sJQ58FXJTY6/5Z5oZkjs7TF2GvWPMPE8uS7TQBFB8eUT3QKPsuGqrWWP/C6X?=
 =?us-ascii?Q?Dl6zP0ioGeLmZF+PUAlben5Vyz9h8mvP7CQlaW8e/hNaZhbJe8Lo6zybQDxk?=
 =?us-ascii?Q?nPbRUKz6YUBA9OU5VL6yvqPxJvvaNeqdEHeOZe6sqrIgiVFjNjbTMnCS1idh?=
 =?us-ascii?Q?MOuHz01rPRYZUOZ8ZseajnvN8kGB+gBpkrRh97Ur+4CiQjrJiv9RxPB2y07Y?=
 =?us-ascii?Q?Dm423GIBV4T67qDqXDSa+5kPnbZvULIuNfdhkZ+V7JnaR6A+wRLPCQdDQFFO?=
 =?us-ascii?Q?f+v9SmdgNat/2DwCl3iRgKPV5HEhklYe1l4te8zO+I+U7mqfhOQDrUKjZb7+?=
 =?us-ascii?Q?n9GWE5LD3Iqvtt7YYUVADg4rP/iYU+4hyEEdoLoL9J86GmJjOHzb5F4awlTF?=
 =?us-ascii?Q?oRthkdg5I7i3+E11NZNi+LGdx62O5SaqkJ2hqQc8z/T5Es7C0j3OyZCHduav?=
 =?us-ascii?Q?3YT8jjQBv6m66s5p9q6+Uc/I/z59yIXeqDImgrmXob4Z5uQAg6sOzPdf5S/l?=
 =?us-ascii?Q?CHLp5E58bgNWqlG5Ovq+jqQK9HeQbDoWY+0Xm6rZFx9xTREtEf2cO3VJWi7r?=
 =?us-ascii?Q?nICifV4dDDNTy4S3+iVULKU=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB3367.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cb5cad0a-abfb-4900-713b-08d9a03c643d
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Nov 2021 09:12:28.8097 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lC9KratQHGEL71yzgBCEGK2Be4sP6PUYF1JNUvK0O1rtIqFUaFvft8fA6v8LVbMcODCauTb442I05egugeDCqQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BYAPR11MB3574
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net-next v1 2/4] ice: use prefetch
 methods
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
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse
> Brandeburg
> Sent: Thursday, October 28, 2021 1:09 AM
> To: Nguyen, Anthony L <anthony.l.nguyen@intel.com>; intel-wired-
> lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH net-next v1 2/4] ice: use prefetch methods
> 
> The kernel provides some prefetch mechanisms to speed up commonly cold
> cache line accesses during receive processing. Since these are software
> structures it helps to have these strategically placed prefetches.
> 
> Be careful to call BQL prefetch complete only for non XDP queues.
> 
> Co-developed-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Piotr Raczynski <piotr.raczynski@intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
> Testing Hints:
> Run AF_XDP socket and then terminate it or run xdp2 sample and send some
> traffic into the port.
> 
> Performance numbers for xdp2 sample are not noticeably affected by
> introducing branch from this patch.
> ---
>  drivers/net/ethernet/intel/ice/ice_txrx.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 

Tested-by: Gurucharan G <gurucharanx.g@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
