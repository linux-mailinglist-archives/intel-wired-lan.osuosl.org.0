Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FE6075ADF8
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Jul 2023 14:12:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 78A0482141;
	Thu, 20 Jul 2023 12:12:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 78A0482141
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689855122;
	bh=RtCE3vbi1cgJvZTd/lhrBhanusdEXpfyRZ/gEPBa1tQ=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=m1GPNo86uGea2Bpjs/pZj7vVJ2bZ5EjSO0Yu59aerF8y+val265+MP4WXjAbrXD7e
	 d/YjPGYU3HhB2CZ++kt50IX/ss60VgJmZDy5i39/oAytsJkX5Z3rYR2PYxoEFmTm0m
	 JmuRSlDyBFpm+WYvVscbf0hHmQpz2rj7LfShXNxxERnrtwnuWNkDjd0nW6dey//ayJ
	 Z5ZWPdxCBlXqRE8O5AX7eYeAeI9irPzn1IeQEgwm0vqN6xZ1wxVnvBiRufHpAVpb+A
	 kyX3EpdgvRi1bv31m7IZ2e9/VMeG3I7WCmyGrM04kZfXBdj4ybrR+E9jLADryDKn36
	 fyQ6MIVcSEqTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T-CrN-gpVNxO; Thu, 20 Jul 2023 12:12:01 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 5ECEF82112;
	Thu, 20 Jul 2023 12:12:01 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5ECEF82112
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4A84B1BF36E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:11:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1E87641AFD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:11:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1E87641AFD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S9Yygw_KrNaZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Jul 2023 12:11:55 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 20 Jul 2023 12:11:55 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0826141977
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0826141977
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Jul 2023 12:11:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="366741279"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="366741279"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jul 2023 05:04:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="838095286"
X-IronPort-AV: E=Sophos;i="6.01,218,1684825200"; d="scan'208";a="838095286"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmsmga002.fm.intel.com with ESMTP; 20 Jul 2023 05:04:48 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Thu, 20 Jul 2023 05:04:48 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Thu, 20 Jul 2023 05:04:48 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.47) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Thu, 20 Jul 2023 05:04:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ho/aO8LnBFTIkZmDwKYN5RvWx98qSGdeMHUL8zBgBpGbg1Xy5VXYL1/JFof+9isnUkhQwOVPoCk7fNoRvpY0cBLxluv7pS6INrLLLxAoJYp7j5rcttLlSQzr4hNCJwazwvHygkRJrwpRykXr32k9SzD0wfmSX9hLMSFNhxcwG+Ybo/Ytr7frGiQZ5oAzoYKCI9rlwsXOjermVL0r+uhJCQDl+Mnbeq5iLdR3R9ao9J+r5dbRFvsiW21dfBXWw5MF+5rsXIT6ou6DXY6NeFSfdpWb4aR7KvnW0J8fQWcEYizJSy8e9b9qsegMsquQi1lxNSV861BTmZyQp8voy5doiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=irx1VVwmu89O4yYm5RIgUENZCPf7wyWb1PCR0fDplag=;
 b=Hjm7wu8PL/EDJdIJios5wg2YJm8/tyQzhin6TWpI7lJImvqz7u9ZPy5wmYqtCxvB9qK6NoUTkyoMSvE4cOY0l61yhvQ0xqf7Fus+YpJVldsslGLSQ3stY1O+P2cEPZi/TR+i97pUU4jo3Pqp6+2v7agv5NP6+eYLjgspjLxZc9Sj4EEDdKz7vXDZH33IBCpnokrlnAHQSMVV6ByWyZ7CQ9XlawupVyrFJkG/W5fVmtcjBgVVhudy/6nZ6PD7IG+Axk9DMsx0ZfFdmCDRi6YSsPeKt8diTLo2Bjswa1nIjLhE4aC7tV/pDZqZpzIopsavsKY1HTHP7Ifhy1PxrPlT/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3521.namprd11.prod.outlook.com (2603:10b6:208:7b::32)
 by PH0PR11MB4776.namprd11.prod.outlook.com (2603:10b6:510:30::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Thu, 20 Jul
 2023 12:04:46 +0000
Received: from BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2b55:774d:2fd0:59a9]) by BL0PR11MB3521.namprd11.prod.outlook.com
 ([fe80::2b55:774d:2fd0:59a9%6]) with mapi id 15.20.6609.025; Thu, 20 Jul 2023
 12:04:45 +0000
From: "Romanowski, Rafal" <rafal.romanowski@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>, "Chittim, Madhu"
 <madhu.chittim@intel.com>, "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-net 1/2] iavf: fix potential
 deadlock on allocation failure
Thread-Index: AQHZs275bYxD3KCsD0K4uJzyAHOoH6/CncTA
Date: Thu, 20 Jul 2023 12:04:45 +0000
Message-ID: <BL0PR11MB3521AE87B06E25AD8091EF3E8F3EA@BL0PR11MB3521.namprd11.prod.outlook.com>
References: <20230710204128.34847-1-jacob.e.keller@intel.com>
In-Reply-To: <20230710204128.34847-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3521:EE_|PH0PR11MB4776:EE_
x-ms-office365-filtering-correlation-id: ca34bcb5-73cf-4931-c06a-08db89198211
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G1qIiUqe5C9AYCTYiR5tcHGF2huSk8dk7oze3PFXVDQJQlG6BE2Ql0gOnZSkq/B4VSTAgWrqogeqi3bZ/wehi1Y9mSQnaynGZ3cLtDBvgyQm1n1kSGvWef8gnPOG2fN9Xfcozh9RYdl5kXLyg59jnG6W5ZMVpOBaljS37YITWnJ/Uv4V72rYmSTaXuy3gCdhm0y7AdBeMHs9T60VbsuXQ8mNRAscDq53MiA3NMmG5SqbaWqnmRTz1AY8hwkXaPN7ahXltL3fvPA4rcy2mjQgYDVElDkruC1Id/cxz5xqEV0sf5bC+vHMSVSpXV+LZd25qQllVZ5jKN3m/MOp0zGR7ueGvOVZON0gMq8hi1uQfghw6ibN2yteZcpEg118s+u1W3TCkil6O1oAPJtIGA6RujC5KHpheqDftHiyFJ0MsUtkkL3xP8oINCParmWa/Eg0sy0jTi6NfCG1cYPlW8Oc4B3zIMQs21u9QYiWiBas9YKFa0TwyqQNq5dwM0i4pmVwF/L6krwkXZLI4gL1ZZkA0AT/AszGTztLlFQrQ69kHiI5KGjNFdXOf2Jpfksb0zumePad1QHm99Ebff39oaciAT6CCxL3P+lL6XOCLhTx3ak4nLNwoFbN8ix4I+KOanR5
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3521.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(366004)(136003)(376002)(346002)(39860400002)(396003)(451199021)(316002)(76116006)(66946007)(122000001)(86362001)(38070700005)(6636002)(55016003)(38100700002)(66446008)(64756008)(110136005)(66556008)(8936002)(66574015)(8676002)(26005)(66476007)(6506007)(41300700001)(52536014)(9686003)(71200400001)(33656002)(7696005)(186003)(5660300002)(53546011)(82960400001)(83380400001)(478600001)(2906002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-2?Q?48AGmD0K6t0Ti0t4MKhQP4stT5+1cXnzQPNR5g4bVzS5ybXXTrmY6d8OHp?=
 =?iso-8859-2?Q?EQkw96pn4di+ayhSW1IToZu3i4MGsdj9oJNe4gCppZNKWH6f9cZxQ+LaUV?=
 =?iso-8859-2?Q?qHvVajp6fQUCRN1xXOdxpnh3FKsd2wcNB+VuOxn2qKwFixvk4bpSVzTVrX?=
 =?iso-8859-2?Q?MhE3SpdgRrZOvirUqsrfRTt/gynbbBzp3rc3pf/aK9tOm+m0hFobS6uWsw?=
 =?iso-8859-2?Q?NEeN5dHCDSgtrjAC7ae1gQYCBi0dgrcGuGU73gShmDviLrx/ImH7yOByKX?=
 =?iso-8859-2?Q?Qld2w7NPheyW2Uyh++ol7lmUWyp9sgIn0T2xVZp54wNj0hyibIl4xxgIxw?=
 =?iso-8859-2?Q?QYh/c3bbIs0+KY01sWVOaMV625tlF0HCxYkWL4ggVmkQ526qYsIsbIkl5o?=
 =?iso-8859-2?Q?STtg2jEfD3ZZYWF+nZUI7njZsf2s5j09U5Zj4OZVIF8ZVOc43l0C89LFZA?=
 =?iso-8859-2?Q?iOzfgwvG/I6zVAZ78I37jS7w5TqeXMHwlExp78tf4COsecTew73muajmcE?=
 =?iso-8859-2?Q?zJ24qMlChR7/8spGuWfowFcvlF/xsUQWZr3eg2eyguKSNeurzun1prAmsZ?=
 =?iso-8859-2?Q?fWJiiSxjREwddufIjUncC8jU0HKcSdE9GeNokgninA2Ii5m5iJMolu8iQw?=
 =?iso-8859-2?Q?k4HB/W+aHzcJHGEkV4sD6KMlkVjZ8kg1HhU3FS0gGWKjLxBdSOdZYUPgFK?=
 =?iso-8859-2?Q?tSQVF7d3c/3SVaI68UupUId4miMisyYYDHVgefqGghw2lJXX5cHK9jOvCc?=
 =?iso-8859-2?Q?PjoHk/Jm3aGTXaqfLBNW2zI8e/wxzgF+gIapAx9EW3u6Qk/0pAfWKo4NID?=
 =?iso-8859-2?Q?loJf9J3bVM8UFqLczaPj6fE4cLCRnWyO1f/YdTwUjS9uYCWZ6BdS5nyK/e?=
 =?iso-8859-2?Q?C8YvS2hOPu2k6wmE/bE2dnWbrQTruwtDQaLwkE78y3puLx3MkI1ie1V41r?=
 =?iso-8859-2?Q?cWq8u+lJhdTl5OpfZcX/vdnmn1jMhR+uKs3vsvqNjou9GSY4FGaEaUGo1t?=
 =?iso-8859-2?Q?8s04hT0rXKV+Rgu7hpqZOu6NUsOoDLF/Tk1qvyfu8elG63j0i5zctk6lJj?=
 =?iso-8859-2?Q?ata2ZEnBNPxBs1rhgbT2kJ4f091/lum3iFoH+4pwyxs94G2yxZ1d7VBkZ+?=
 =?iso-8859-2?Q?LRY6c8Q8Fpgqz0kaA5JekDQqU7pcMs7rGTxznGVfQVwvAlc0AwkBHpqGop?=
 =?iso-8859-2?Q?FwCswhCne2Ew8bR61ylxN2u3v/EheP8J7tILfuTc2oEZh7PrqH5N7WQyjb?=
 =?iso-8859-2?Q?SOqPpJiBECbmoGDFzmU2Tp8mjTpYaADp1zhfuYSi97/tR01EV3aij7+dpe?=
 =?iso-8859-2?Q?HSPjpCb8w9/agCTpoLKqKC/8F6Toy5pwp+NfnJPIv07c2Rth7OJAw2zlpw?=
 =?iso-8859-2?Q?Zv+41kB3w3kkxaqjwYR4ldwOBJZyvJV6M4wZ0ffElygqLHaP+VToRlC81G?=
 =?iso-8859-2?Q?bps9V0XNs71kPaX3VBjJAABYNWhxwi/ky7lZ3DWjxAtt+QUDCkf5nU3zLl?=
 =?iso-8859-2?Q?356DGCI274jsFypd6SQQB9ypsa8NSOPncTiegX83/DND5LYjIorlYojbva?=
 =?iso-8859-2?Q?ZdGINuKbTnnbwAYP67L8V0GPNL/p3C2RZYIG9KkJni3B2MYTuPatfFUSAn?=
 =?iso-8859-2?Q?xiuStvCfp8SlDZhtLwy4MDKZaiSWPo2FtctQIvKFV2U60eXjppA/11dw?=
 =?iso-8859-2?Q?=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3521.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ca34bcb5-73cf-4931-c06a-08db89198211
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Jul 2023 12:04:45.2096 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kTqORmB5NFh2RBx9+eaG3WjthEELj3COrr7c14wv3ywdlRrQOsZP6WqZNcJ6cx7dNg2eejlFRfhotJq8SSP2QKu4wibpIIa0S4NLEuukmTE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4776
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689855115; x=1721391115;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=HdA3qSc3IUUW0lObAi8bmEKApW4JtpUG7YT3quoEWt0=;
 b=QO6xktXCmWKTI0ZWMTu9W29mnhWfPwZWNWlnO+FMUhpYB7Gdl7PCGrhA
 jJrjXAdRVsluu98S3tMU9lgKu8AwlJXNoTDxWLO2v2inShNFFmIITOzhP
 NsehEQ3QPlous6V+z2aaMRx7GPMRsCKFtxBJeDfFGubH/dmAcRA7ln7ov
 CRIdMV7FFIkngzCoI8BL3Fb8aD9zttTJYTpjvbJQCD/58v/xp3Uwr2Df4
 V9HUcBFs6qri9Vedwq5g3ppamJ6INoRI+kjhnea5zKgai4SjkbS+hgSOq
 crTaVSO2VJuUqAvOUayO2yloZsmUjsC43YpsxH/921hsrCEx07+ZDdHyo
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QO6xktXC
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-net 1/2] iavf: fix potential
 deadlock on allocation failure
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

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Jacob Keller
> Sent: poniedzia=B3ek, 10 lipca 2023 22:41
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>; Chittim, Madhu
> <madhu.chittim@intel.com>; Nguyen, Anthony L
> <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-net 1/2] iavf: fix potential deadlo=
ck on
> allocation failure
> =

> In iavf_adminq_task(), if kzalloc() fails to allocate the event.msg_buf, =
the
> function will exit without releasing the adapter->crit_lock.
> =

> This is unlikely, but if it happens, the next access to that mutex will d=
eadlock.
> =

> Fix this by moving the unlock to the end of the function, and adding a new
> label to allow jumping to the unlock portion of the function exit flow.
> =

> Fixes: fc2e6b3b132a ("iavf: Rework mutexes for better synchronisation")
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/iavf/iavf_main.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> =

> diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c
> b/drivers/net/ethernet/intel/iavf/iavf_main.c
> index 06ea61f30b6f..6d2f647066fb 100644
> --- a/drivers/net/ethernet/intel/iavf/iavf_main.c
> +++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
> @@ -3264,7 +3264,7 @@ static void iavf_adminq_task(struct work_struct


Tested-by: Rafal Romanowski <rafal.romanowski@intel.com>


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
