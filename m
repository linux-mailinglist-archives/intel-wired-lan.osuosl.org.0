Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B974419C5
	for <lists+intel-wired-lan@lfdr.de>; Mon,  1 Nov 2021 11:22:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B52A56079B;
	Mon,  1 Nov 2021 10:22:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id kTYsiLs9YhG9; Mon,  1 Nov 2021 10:22:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id ABC04600D1;
	Mon,  1 Nov 2021 10:22:09 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id BF7F81BF3A9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 10:22:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id BB1CE400FF
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 10:22:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5oeK21BNodAR for <intel-wired-lan@lists.osuosl.org>;
 Mon,  1 Nov 2021 10:22:04 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 01BF6400D6
 for <intel-wired-lan@lists.osuosl.org>; Mon,  1 Nov 2021 10:22:03 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10154"; a="230939982"
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="230939982"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Nov 2021 03:22:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,198,1631602800"; d="scan'208";a="539755860"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmsmga008.fm.intel.com with ESMTP; 01 Nov 2021 03:22:02 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 03:22:01 -0700
Received: from orsmsx609.amr.corp.intel.com (10.22.229.22) by
 ORSMSX609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 1 Nov 2021 03:22:01 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx609.amr.corp.intel.com (10.22.229.22) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 1 Nov 2021 03:22:01 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 1 Nov 2021 03:22:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HG+Dk39VLZ6uOdsDvt7V3XvganWzEp0+MwRonsh26xu1JCER3IzB8Ijq5x6tHFDcIWJ4uBy6Vylk6n3/FQRVeWvRhBPcFjk6bN0MiooIJFhHwhKaAVDqlOohK9CyvQbri/fuleodUzyu4tDC/CF3C1iOqC2bK96rwlS6PkLE9cQp2tqUUZTiWs315ePMUC4ZreF9hQO+OyRxB6ignK/XeaGdxewUm44/kfWKEoIa5bf5gOn9ooc8Tker+8mcP/I9bhBH7pmk0nJCOondNt2Nacmf36walWOpOVMThXMNCMiGfSRNySXn2jeOVsKO1sYlC3hXKo3X3jPW+RdUigapSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=K12FmqhUbuJA3u5wKG4KxwUzLMw/Gh7UUNguHvgiLTM=;
 b=cuJI4Zy7JWGsDC2MlSPb69i7Err8tj7bGY0wJuOiTpKPzEw5Z0Npa+wBFd5FZcoWtemTbuHFJEhU2ZEiAlUm+0yzVRJ/nwYYt3cyhxvR+wwZDo9NOUxyi0pb8JMtRNb8sEKj/5DyrvkRmTGZJReOz9ocnpx/E1dYBtJ5BmTWY4ZHqTPHcR5T1L7EB+OooZvtN4qvMT9eYboPj3sH1FO9ZKKZPF0hKV+x8ozcWQw0xRBX63ld2nz54MmT6y01qtAZ+BwSOaZvSps7ziQd6ylfGxLCz1f6s1p5n8hfivxAlY3/iLTBbCmgThK4uTwFWRdnr3pczXROWG5UHzTVWrlB1Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=K12FmqhUbuJA3u5wKG4KxwUzLMw/Gh7UUNguHvgiLTM=;
 b=pTiqjXUaxkOAomaMrRxdLa8vtAbLcXY9JhNHbhzCHYTXbR8U3ZFMbQONNwzakvtO+tUEB1DvqWN+qqdtNXawWxoWSoDjV73nVCaDRudQhw9FNY/EvG04bli+DcGnIJxByIla3KmzulcnR5OUHEyDRjstf2Cw6PawlLpPrUJdVf4=
Received: from DM8PR11MB5621.namprd11.prod.outlook.com (2603:10b6:8:38::14) by
 DM8PR11MB5654.namprd11.prod.outlook.com (2603:10b6:8:33::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.13; Mon, 1 Nov 2021 10:22:00 +0000
Received: from DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac]) by DM8PR11MB5621.namprd11.prod.outlook.com
 ([fe80::555a:1e2a:ce25:53ac%6]) with mapi id 15.20.4649.019; Mon, 1 Nov 2021
 10:22:00 +0000
From: "Jankowski, Konrad0" <konrad0.jankowski@intel.com>
To: "Creeley, Brett" <brett.creeley@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net v2] ice: Fix race conditions
 between virtchnl handling and VF ndo ops
Thread-Index: AQHXpcNtm3fIphotUkGPkJmnhGoUxqvuyPkg
Date: Mon, 1 Nov 2021 10:22:00 +0000
Message-ID: <DM8PR11MB5621D1A1660CAAD1E9780A8CAB8A9@DM8PR11MB5621.namprd11.prod.outlook.com>
References: <20210909213809.27461-1-brett.creeley@intel.com>
 <20210909213809.27461-2-brett.creeley@intel.com>
In-Reply-To: <20210909213809.27461-2-brett.creeley@intel.com>
Accept-Language: pl-PL, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: e49c79c9-402b-466b-a8de-08d99d21712a
x-ms-traffictypediagnostic: DM8PR11MB5654:
x-microsoft-antispam-prvs: <DM8PR11MB5654D47A15CCA9234D6B3E4AAB8A9@DM8PR11MB5654.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8273;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3tk9VjCdgv7rzFPtwLxaaVcGzQssZ0iMYhrYYcl6169VPi+aFO7FoQBbhnhN8mxt5bARMdwKq62CriG5j5Ncs/dNMd5Yk7/iBJT0w9Q4kk9LeLJZ61y924atPTgArsKEn28Z4BUYPPGT6tdWQ5GJnbw5yVz9ldxNheCiRFsQzCHbKzXeAgzj7UGk9pPetgJXznEp5MLteKGhUawSJeV5B+nGbVpy246pYFBN5VdT/XzdCPMm0jdvcC2M+S/pZbrNeJAnD5dcusgEgIPAJy3r1uNtUvVZixeaXbWx7RbsurTT72KmJWtzzuqNt4ZzfRWgrfzeEgecNbITYI8PC82t/XDrs/nGrcwUVwChmquKyjDUBuNuP+MOoKWl8PrE+jJCTy7m7MbjZEBnGiW1nSjxJGuwGbBfk8jX16thpnf3yCfGg+X3CNnhbJf8+uWdvz68i/0bhiFP59dkj9eKevw56Qs9iTYFdKz1YnirzkELbzSpEC8Ccuo4vXQPzFLPFWUZ/IXV3M1kPCdqXEhxnvoGfq/6Vq7TvelU1mFNwGLq/tZS7xHvBcokQVVIakfkexPoqNUrZ2Z3sXJgs0+9tNAids/FmfB7PZ8nOk1YJS9kbDWvpLfcNLuao+pgtbB3bzEY7KmkQnd3mLcxWL6R+Sa1Od9Z1C7VG8e88oMHJtPlk8kOmhv0K+T62d4KH4KR5oOH5w53rTsqsH5eUMzKZ/AiQA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5621.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(26005)(82960400001)(66574015)(508600001)(33656002)(8936002)(53546011)(6506007)(5660300002)(8676002)(7696005)(122000001)(52536014)(71200400001)(55016002)(86362001)(9686003)(76116006)(66946007)(66476007)(66556008)(64756008)(107886003)(38100700002)(4326008)(66446008)(2906002)(186003)(110136005)(38070700005)(316002)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?L7LHruWUwNUDkmLwqJd8F9+JyoIY+Zr/t9lCrlYybkxLIjp3UvVBdVmpwB?=
 =?iso-8859-2?Q?jpimZcIN5KXANnRKM5wOz5PegRj6TSsBe8gGRlLViAEIcoUVHfiA4oIKHv?=
 =?iso-8859-2?Q?XMlHm5vdSpNPpnrdvHzEeaRtelHldH4GNsckmAyeOwuz3d67F1u9caksRS?=
 =?iso-8859-2?Q?tbvKqpS+NGNPqNYmMT0Llqx/lAGdsMJFMI0iyedERK0Yu8HRUkO3kZbhKP?=
 =?iso-8859-2?Q?PVi/W/jClC/3WLZ+aVZKpAhnnMQpn6wR+EGBtHCjvTud7kBm2d/vKVQZvA?=
 =?iso-8859-2?Q?W96wBDX3ppyAFgloUY5aQD6W4s2Plidi1/oV+DDHvW+PeRzcLdwTPWfp1s?=
 =?iso-8859-2?Q?k7IOBdPus44zgEos6kisDiPlSU8T2hQIklPVaKlcZHitIePKgamc609l53?=
 =?iso-8859-2?Q?McKJshjtqZk6dFw0n0QRGhPqKGatvyTYc6E33CE9+wWx9ZA448ZBSt9+4O?=
 =?iso-8859-2?Q?N5OMNdBWigAz3AZmX0SSTQtPdNtQM7bWjXi/GAeMJSs2+5Ge0kFnKk8Q/+?=
 =?iso-8859-2?Q?sTBYzVknXaP8x9ZPc9FuuP2iwBKMpZBCRJd8iEulbMrv1E8MDn1fc1VM1J?=
 =?iso-8859-2?Q?6EwTUC2GMVvFWGlMP2CEZ2TYJkXppIxjKdE3JhxjzC9RoRVpOIw/0OvqvG?=
 =?iso-8859-2?Q?n9EZirgJImEXcxrOSSLCslSb4LRy1if/o8bZrAWPXNppfw7sBZQlGlfBYh?=
 =?iso-8859-2?Q?j94z842wcKAnUzM/SMnYbFhn3WGNpuoFp0CnI+gkMO1QR68OqFdIfKY5gw?=
 =?iso-8859-2?Q?vlTeN22iI0NfwCAOMiGxnUHp6gzM/XzXBUxy8iKTfgr8C+uO/AlyPOTY4P?=
 =?iso-8859-2?Q?5OXc3l5b8zw/7SfIL/kgpxEaYniOVaiPinfQ8BZUoQ45twj22YLz8vHM6i?=
 =?iso-8859-2?Q?v4fPJhBgHT1beUHPTQfRkpxiUqhUBDEsK8O/gi/oKskc/dwYUnbLYYZhL5?=
 =?iso-8859-2?Q?hsM2Goc4htYGkXRPY8q9de7mumbiLzRtsY4YbICj/uXunujh66xSSHee/c?=
 =?iso-8859-2?Q?6ePKgNaDCi8gQku2OyYlnQVAufCH8YhUQ7gsRJpw/JoBIHRH4RAKwXWv5y?=
 =?iso-8859-2?Q?xVv4mfgnD71Cjs27nqFUlESMYnn3ERqg/k9c3qeeltBGqrgJ51Dg2YKl33?=
 =?iso-8859-2?Q?T7XDHE+HmztFQusUqOCysq730H7l13ImRYSrjTY3rRmnRq11gY4frZ71oG?=
 =?iso-8859-2?Q?7kGqKIRgZX6Krlq1R+CrvAsrvacIi1iisIwbhDLKT6Al7pCQPPn6S91Xod?=
 =?iso-8859-2?Q?jQzhbbyMorpiJkYZPTRwEEVG3hgmIj+sUvzYrzzQZLuTW+pDC2y4WNmvFK?=
 =?iso-8859-2?Q?eacOIMX9AGcOZrfU1bzECSec4M9GCAOI2Ftifwpb17VB+OodR5LIqXdY12?=
 =?iso-8859-2?Q?nFf/QQryS+qkUMRaeC7mtyRqRX6QmbeBRNKKLAVctOVRKmHjK9qRI7DY2J?=
 =?iso-8859-2?Q?zlTrADFRmRN/dYb27G7yfvxZhs4r0uPxnnDBV0/FA3kKGJTx4Np6nE3cUc?=
 =?iso-8859-2?Q?Q8ppjLmwMpf8UWZNLKDtPsysENiV6MR9h9JGwSPGTpeYUL0bmBeIB79gGV?=
 =?iso-8859-2?Q?jSpK8Ea8dbol4GSqIEpwNHiX9zS1h+4qjuJ9yJCfbeJPWb7Y5a0Vsco1og?=
 =?iso-8859-2?Q?4N3yotm97GilW2V4zNzDyV1tTXLYq59xGF5Yp/DglH8uUGFb4x1815YY5x?=
 =?iso-8859-2?Q?pttHeyjRtmkIjNhfEmqYRyALfc3E8wDiqoYi0ptLOIbfLSfQI8TyO1Ck1Y?=
 =?iso-8859-2?Q?zYRg=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5621.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e49c79c9-402b-466b-a8de-08d99d21712a
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Nov 2021 10:22:00.6553 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: egSk5fIwhUNwbJdAnDV7whlPi+kD7U+X41e9M+RTo7QzustlPNdDHPk9+jlUCajiOev+meXaI+RK87/6qJLJkYHujD1as394HMrk6yxhcME=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM8PR11MB5654
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH net v2] ice: Fix race conditions
 between virtchnl handling and VF ndo ops
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
Cc: "Patynowski, PrzemyslawX" <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="iso-8859-2"
Content-Transfer-Encoding: quoted-printable
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>



> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Brett Creeley
> Sent: czwartek, 9 wrze=B6nia 2021 23:38
> To: intel-wired-lan@lists.osuosl.org
> Cc: Patynowski, PrzemyslawX <przemyslawx.patynowski@intel.com>
> Subject: [Intel-wired-lan] [PATCH net v2] ice: Fix race conditions between
> virtchnl handling and VF ndo ops
> =

> The VF can be configured via the PF's ndo ops at the same time the PF is
> receiving/handling virtchnl messages. This has many issues, with one of t=
hem
> being the ndo op could be actively resetting a VF (i.e.
> resetting it to the default state and deleting/re-adding the VF's VSI) wh=
ile a
> virtchnl message is being handled. The following error was seen because a=
 VF
> ndo op was used to change a VF's trust setting while the
> VIRTCHNL_OP_CONFIG_VSI_QUEUES was ongoing:
> =

> [35274.192484] ice 0000:88:00.0: Failed to set LAN Tx queue context, erro=
r:
> ICE_ERR_PARAM [35274.193074] ice 0000:88:00.0: VF 0 failed opcode 6,
> retval: -5 [35274.193640] iavf 0000:88:01.0: PF returned error -5
> (IAVF_ERR_PARAM) to our request 6
> =

> Fix this by making sure the virtchnl handling and VF ndo ops that trigger=
 VF
> resets cannot run concurrently. This is done by adding a struct mutex
> cfg_lock to each VF structure. For VF ndo ops, the mutex will be locked
> around the critical operations and VFR. Since the ndo ops will trigger a =
VFR,
> the virtchnl thread will use mutex_trylock(). This is done because if any=
 other
> thread (i.e. VF ndo op) has the mutex, then that means the current VF
> message being handled is no longer valid, so just ignore it.
> =

> This issue can be seen using the following commands:
> =

> for i in {0..50}; do
>         rmmod ice
>         modprobe ice
> =

>         sleep 1
> =

>         echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs
> =

>         ip link set ens785f1 vf 0 trust on
>         ip link set ens785f0 vf 0 trust on
> =

>         sleep 2
> =

>         echo 0 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 0 > /sys/class/net/ens785f1/device/sriov_numvfs
>         sleep 1
>         echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
>         echo 1 > /sys/class/net/ens785f1/device/sriov_numvfs
> =

>         ip link set ens785f1 vf 0 trust on
>         ip link set ens785f0 vf 0 trust on done
> =

> Fixes: 7c710869d64e ("ice: Add handlers for VF netdevice operations")
> Signed-off-by: Brett Creeley <brett.creeley@intel.com>
> ---
> v2: Update Fixes tag
> =

>  .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 25 +++++++++++++++++++
> .../net/ethernet/intel/ice/ice_virtchnl_pf.h  |  5 ++++
>  2 files changed, 30 insertions(+)
> =

> diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> index e93430ab37f1..bf6bffbc2173 100644
> --- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> +++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
> @@ -647,6 +647,8 @@ void ice_free_vfs(struct ice_pf *pf)

Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
