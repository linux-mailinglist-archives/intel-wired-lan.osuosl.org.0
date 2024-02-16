Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4980B857F6F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 16 Feb 2024 15:36:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5816641C31;
	Fri, 16 Feb 2024 14:36:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eoJuNHYpYfn7; Fri, 16 Feb 2024 14:36:33 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3DAB441C32
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1708094193;
	bh=1pa+3WpwUapSyIRwwfhvWg0ybKFYJ4vtc3qqrC9OW8I=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=GZlulfuyesP6cDp6HzxM1COe7hEi7FlB7Q+TfbfJbQoQAt/nWA9XPP2LQWOU+6wqp
	 8m5WAP7otSwHXgp8iJMPHaodY0hh2uYpVD9BLpqdv3PwQzK/hRgzVLwPKxUlGqlNqt
	 LGK6U+x3VY6sZ0judLdNJ2nJGxSmL1tywVg56ONfqR+3DsYjz+/XID1DOoj6WJ6NzY
	 w3XX6onPhsXvCCxhfYpcdtUpJT6D9tJmoeTo7Lyh9dCE4E786uNddY/HMCnLNIu84i
	 xo9QfmVN8NPd+2KAxYTvy71qUbWcgqIBDJp9ukXWwXB7ft3Gkcph2pSTXWpVELBr2U
	 r7YxiMHA9UZGg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 3DAB441C32;
	Fri, 16 Feb 2024 14:36:33 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CEA421BF29C
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:36:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BB4EB60699
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:36:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id E2AtjttwB2Ok for <intel-wired-lan@lists.osuosl.org>;
 Fri, 16 Feb 2024 14:36:30 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.13;
 helo=mgamail.intel.com; envelope-from=himasekharx.reddy.pucha@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org C8AE260686
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C8AE260686
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C8AE260686
 for <intel-wired-lan@lists.osuosl.org>; Fri, 16 Feb 2024 14:36:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10985"; a="5188391"
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="5188391"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2024 06:36:29 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,164,1705392000"; 
   d="scan'208";a="3878019"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa009.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 16 Feb 2024 06:36:29 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 16 Feb 2024 06:36:28 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 16 Feb 2024 06:36:28 -0800
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 16 Feb 2024 06:36:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZYQ6tMsgaGoVBvwXBIVsosNcBOJmPWLAnPHlORhal8xjBQD6ThGK7NjFEGFrLo+qXl7iLr/KtKZts8dasIMZ5Xp+fX3juZvoQ04Y/OaJlBmzsA8HZTK+qNOxMSLOFOG8MYcr8jNU3SxQG4CbSxOwmJCmXLDgi6CFLQfpgVjReceyn5GUOodqus2hnG8PUvBHccmbP+5LuXfIWdFyRCX4hpiDIf8FDDmRE6222RtwLqTBZ355FxTBZLHisku2ncZr9p5clqyuNV3imwg/FbfGbdAWQS5SsD48J735NRL5LENItLOmLU+Z2DoqVraenNG/rtoLIbdsLMaTqqnGPix96w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=1pa+3WpwUapSyIRwwfhvWg0ybKFYJ4vtc3qqrC9OW8I=;
 b=ReyspH1NWdvrqYEFoiptXYnq9K6pYFzntW5AYoLJQt8gYf1nn11mZIZJ3VEOdaYIwZ6br+Y22LNXpbausVutzvy1mf9C8dVrMZJ0CPxHFXXA7uKOSA416ss/8pjzHkdoNSel5VggDAqUCllBjbOjH9wPNpYDpFLYxbwrSBRvoL+pA9iECXhcqPlTdIg3FFIzw1zDZEoy7CE/6Lrlqspt8SLkdAeNp0hcRrG37bk3GDyFzGiQsfYkHL3qWiwGWqDtmi4sIfHSsUW5LbNU9r0f9u3YBQKye2zvYHM6JCNcA2+k7mG3jhNoCjFSrmiDDAILQYyNuEwg4WemFTLt6mRYPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CYYPR11MB8429.namprd11.prod.outlook.com (2603:10b6:930:c2::15)
 by CO1PR11MB5185.namprd11.prod.outlook.com (2603:10b6:303:6e::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7292.31; Fri, 16 Feb
 2024 14:36:27 +0000
Received: from CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda]) by CYYPR11MB8429.namprd11.prod.outlook.com
 ([fe80::5fa2:8779:8bd1:9bda%3]) with mapi id 15.20.7292.026; Fri, 16 Feb 2024
 14:36:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix pin phase adjust
 updates on PF reset
Thread-Index: AQHaWeH+LVa6nYtut0KyEDgh6xs157ENFu+Q
Date: Fri, 16 Feb 2024 14:36:27 +0000
Message-ID: <CYYPR11MB842936FAB95933EF08D23DECBD4C2@CYYPR11MB8429.namprd11.prod.outlook.com>
References: <20240207161923.710014-1-arkadiusz.kubalewski@intel.com>
 <20240207161923.710014-4-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20240207161923.710014-4-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CYYPR11MB8429:EE_|CO1PR11MB5185:EE_
x-ms-office365-filtering-correlation-id: 3777c91d-db98-4804-c751-08dc2efca85a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: wpDi32huCAtwQSpFlWS0MBEqZeDwiFP0pzVCtTfYBQeFskRJXW4DYGUj/T4HdNnNQKsuXzNEwstHwza62Okf882/avkEHDueCUzk8XeEAgwrPyCqXGgT1/dQyH7G3h/F8wxJstgXwBOeV09etTzGrM0LSE+SxgyTAEA3CMjFWHvZnk13xZjIMmDi9D9hEr1zkcfLDajm8imaZywIzGXfCYHDwMGsf3KL5CjLC+UrmfR2Z1wNVD07wRrLM/9av+S7ubvSp0Q3XvkdNXPabVPoLWEwkPgdgYBF7BsQS5wH4RzhRF1Es8GLkRd+B4X1/iD++XT7ym5VJuo8XmswUKrEKoj+w47PkUH4RSUZV6RQ4F/l7wwQNWmmWalcRN2v85wYgqXj47mvb2RhV1aJFfwPlmhONIEU0IWN6CTIubKvOH4jY+IIiJ2kjrz1P0omPMb5CgCvdMQ5G+C42M7xvTwBXLiMo587NNGEldldPGp4cALp89t1cvemawWLWCWhF2+0QNU2088VHRBSwS+KRHeEgL5Fp0Mi3jAcH62FJlFRiYyNgVZV5MxBEFsC/iiJNd27Nq2vD8e8weaJkOI/qiaAcyK4i9pMD+jv+SGnxaNO+BP7Iq6oKKicNOq/8+n1FQ28
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CYYPR11MB8429.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(396003)(39860400002)(346002)(366004)(230922051799003)(451199024)(64100799003)(1800799012)(186009)(2906002)(38070700009)(5660300002)(15650500001)(9686003)(53546011)(478600001)(55236004)(7696005)(26005)(107886003)(41300700001)(71200400001)(83380400001)(76116006)(6506007)(54906003)(66946007)(110136005)(52536014)(66476007)(66556008)(4326008)(64756008)(66446008)(8676002)(8936002)(316002)(122000001)(33656002)(86362001)(55016003)(38100700002)(82960400001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?etu9WXJwJPhq7LvR62S0vqAX9+lzg9xjtivti5d/4xGcgTY9nDUVKrg3NaJB?=
 =?us-ascii?Q?OjituhDETymFEeJVPIG1AS1kcKcB25SrKm95rczXI79ldm0v4OajYM1dvG2e?=
 =?us-ascii?Q?WjyWu+UJa/PU1N7Y51wiNRSB/8k8FsKNNenn05DYBTbL84aqPJHeO+QVHfFz?=
 =?us-ascii?Q?lUJhrQ4Ec/P0QhMGVmCph0lBMQRDQ4NIAhQAWHQHkN/FYkHXmIvGS6keRQWJ?=
 =?us-ascii?Q?nCJg6mVFwk9sjtAzdmqxg/pfPN0F6TVNe9j+2U4fEUv6iqh89j7Ez1Ti1VsR?=
 =?us-ascii?Q?jl/oVCtdS0jgt8Cndy0r/5ilN1lR2r9Ht3IqGZob/GNn39Wok/v5aQojkGe3?=
 =?us-ascii?Q?/D0lsQFoi2ow1VqlTddz+AvCMMxUyduwikipbVZO1NDXCV77DC9s/ZgdCMr8?=
 =?us-ascii?Q?SQzih7OG7ZUVG+W1R8i7iodPRG4ZAlJQPb37eRp0BfA4EaMFwT33uir6QkdP?=
 =?us-ascii?Q?Q+xKF3p/XAjeOP/Xam2+VwHf4d5hRhPENz/Selkoe9zqv2/JS7xUixUP5Mf2?=
 =?us-ascii?Q?dgbBrtatbksCWqDNnmnS/Yi5fOIDwvTWselm67cSn7nUlXbqVoAQ8q4oQ9tP?=
 =?us-ascii?Q?xtf9RZFlRuWCdHuNLOVx956Rufz7K5epbK8EuYb/R1JxiRcyT7TwNcKSutWi?=
 =?us-ascii?Q?/aIxDN8dA/p2GhoyjpmEKJtxZjGMZ/XDU4TWxp2ohYasQjBfvGyTzIoUcmFf?=
 =?us-ascii?Q?3iOj9iaudMrJ1NCQA8rGLB74Ep9gh3bGqz28TP45eZ/d06+vRyqzaV867b4n?=
 =?us-ascii?Q?6DQtbYOUdMI6SG6g/HRKFWf9Qi7L256biFr1CpgEfop/cDhmlzf98nMeP5+E?=
 =?us-ascii?Q?rE3efQFWiIfKRMuiB0lsK4bA7oMuXspjYbHGThNFLIFIctLgACOfwufIb8UC?=
 =?us-ascii?Q?3LXWGue5OWkuOTh1uaDSDkwPKdYtaCOwqXTTsBNTHCYuIrrlD6OZN/defKyV?=
 =?us-ascii?Q?YN7xh/tLqzZptQKTtcPz+G4LSpJjbk9Zh9UvyQVtXNK8jzswidDqi15M/k1l?=
 =?us-ascii?Q?XVh49ciVZCtezd9jkAPsPdUO8UlN82/PvJTXY04sRNSF+lFOfKrXayQ4BVuh?=
 =?us-ascii?Q?M1DuKHxkdG8shCPxrm8hH8WfrptpmyVEx8otn2piDCAfI/jSFNaqAHxm30Hi?=
 =?us-ascii?Q?uq6psUfUMRLcgLG5t+VG8Lxo4ckQ2j0G+TGER+ByIk7eC50P/JHV8t6hw7c5?=
 =?us-ascii?Q?8rlM8sTY1X+d/SUAY1cevgy90L/iTga0gpobW5WI/Q28P+Gs0RSblN0UFmva?=
 =?us-ascii?Q?SvmKtvgfq648vIYE1EHrX8G18hVhfn2k209/qP8v4eoon8FTKne4YOrXaGdZ?=
 =?us-ascii?Q?KUJZJm4suAiDCDzmV3M9dXZaCBDkw2iEvKziWyTsfrYDlkhmibdsmlAg3LgX?=
 =?us-ascii?Q?/yXJkl3/iD4QaAhotqBFEnqCdrbf2Zg5w9zmONxXPLeWHOVbr1JC0RISMq9M?=
 =?us-ascii?Q?38ShiAAihAFc+Yg5nRyyeqfUm4D8BdkwcATyqszX3dcgs7njMSjMFBSWmavi?=
 =?us-ascii?Q?ZPMr9Dmrnu7DM5uBdTr/d+AKf2fjxvaU7WxN72A0i3EAeZQj2WAobJNAjZlO?=
 =?us-ascii?Q?gHjXzWAo5BpSHWrcs8lQoUbSGv1kRWJ3tNN8hxXVVnKWX02NwxM+34f5AI2U?=
 =?us-ascii?Q?QA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CYYPR11MB8429.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3777c91d-db98-4804-c751-08dc2efca85a
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Feb 2024 14:36:27.0904 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: i8+aAeezjt26ZDD85S2RhHxe+yKIH8o/O6JDsxis9XjqbrCkJ/dQvlB+KOXhOagCn8nqafVUiAvA3VpnLAXjDzfj9rc11qSdXYF5A4nb03+6qpVyTdih8PK2ooKOv4F0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB5185
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1708094190; x=1739630190;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=jMJq1MjSkOCBQAKdA1g3GJlzLHl9VsNkfiCa+GMvj4E=;
 b=jQV8vMchCqtOBkVbNhtk1DisPIrucI/3pDC6S8ooaGAUwBB7YYia2+e9
 Z0F+fi0jeiCucfJJAp0P7oUA5A9HREJe2LkApvm+nefkfA/ScTw8o7f7B
 9RHFk7RbvH9nZGmU5I9beEpvRCtK7ftyAPAqU+yuEMSv3Wj43huAG4ffQ
 cXXJjQLr9vCnaiI/DrHTx8dmGkpbNvDqanevsLFZ4WRsc69ClJ8PYn3Go
 LZqNQ706yJVQSq5cMTPL+esNitzdDwK8MqJbGgADSzHIfVOKM75c6LH1Q
 yLm3WFKfE82KkCb9W6roOxGwKKnx/61wITZxMwTO15IpzyxthKcKziVKZ
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=jQV8vMch
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix pin phase adjust
 updates on PF reset
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
Cc: "Bagnucki, Igor" <igor.bagnucki@intel.com>, "Kubalewski,
 Arkadiusz" <arkadiusz.kubalewski@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of A=
rkadiusz Kubalewski
> Sent: Wednesday, February 7, 2024 9:49 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Bagnucki, Igor <igor.bagnucki@intel.com>; Kubalewski, Arkadiusz <arka=
diusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 3/3] ice: fix pin phase adjust =
updates on PF reset
>
> Do not allow to set phase adjust value for a pin if PF reset is in
> progress, this would cause confusing netlink extack errors as the firmwar=
e
> cannot process the request properly during the reset time.
>
> Return (-EBUSY) and report extack error for the user who tries configure
> pin phase adjust during the reset time.
>
> Test by looping execution of below steps until netlink error appears:
> - perform PF reset
> $ echo 1 > /sys/class/net/<ice PF>/device/reset
> - change pin phase adjust value:
> $ ./tools/net/ynl/cli.py --spec Documentation/netlink/specs/dpll.yaml \
>	--do pin-set --json '{"id":0, "phase-adjust":1000}'
>
> Fixes: 90e1c90750d7 ("ice: dpll: implement phase related callbacks")
> Reviewed-by: Igor Bagnucki <igor.bagnucki@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_dpll.c | 3 +++
>  1 file changed, 3 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Co=
ntingent worker at Intel)

