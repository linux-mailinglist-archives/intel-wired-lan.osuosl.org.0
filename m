Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B61A375976E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 19 Jul 2023 15:54:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B1490814AB;
	Wed, 19 Jul 2023 13:53:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B1490814AB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689774839;
	bh=txMYQSpYGo2T3B6V1DCU9T64fgVqp75gM8isEtSdbTo=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=04P+Fj5QKNHxVdkcvqlaTdkkgwK9Kfm9LOze3Bh2uBH2rsgSBXD/L8SD8gOrNqsPo
	 8pbYw9ErWGb7aIKkz1wwbkLnlxaBgB8tYeFc5Y5s1JvEn1l7SzzJ1aLrdpIL2qw/Yv
	 f51XrZ/Lff6wgnwsr0YcQDab+rjN1h/3MyFeIFsHX9n/1Gvj6tdA0W+AAQylfwx99b
	 BLy57wvjpNpfPd7fnWSuxLMF8V44LszrUt91pjiEu7e+GFqhYV1eEydW4EEL4voUFZ
	 dQLSEzoc6+aSmyLQuHAD/RS3JVRIba6v0J0F8Nsz4pUpJl64/JP5gyKmHS5r/UWi2C
	 +pt+h6jo4RWYA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XYxTHHZw5IhC; Wed, 19 Jul 2023 13:53:58 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7606F81456;
	Wed, 19 Jul 2023 13:53:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 7606F81456
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id C44AD1BF41A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 13:53:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A58E581456
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 13:53:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A58E581456
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id L_aaNzzlnl4C for <intel-wired-lan@lists.osuosl.org>;
 Wed, 19 Jul 2023 13:53:47 +0000 (UTC)
X-Greylist: delayed 425 seconds by postgrey-1.37 at util1.osuosl.org;
 Wed, 19 Jul 2023 13:53:46 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C59A981429
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id C59A981429
 for <intel-wired-lan@lists.osuosl.org>; Wed, 19 Jul 2023 13:53:46 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="397328271"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="397328271"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Jul 2023 06:46:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10776"; a="848056793"
X-IronPort-AV: E=Sophos;i="6.01,216,1684825200"; d="scan'208";a="848056793"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga004.jf.intel.com with ESMTP; 19 Jul 2023 06:46:40 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 06:46:39 -0700
Received: from orsmsx602.amr.corp.intel.com (10.22.229.15) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Wed, 19 Jul 2023 06:46:39 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Wed, 19 Jul 2023 06:46:39 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Wed, 19 Jul 2023 06:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=cWfw7C9RDGwUcbOL5or3XTs9bl+KrKwvbQQuc2TeL+0DFMx0q6gnZZcgqTTOCN9ltszJR3YTrseTMs9aJ5qzHEHZ5lOgSl7zqh+9Ilrnk+Z75V4MgwJldY5B/eh88wUboWh4FPbLEZBux2P6uVZwrmNaje1wXWOZ2xnT9l18LWGJ0zdEirqU9PuOxyX30CBxKWKzX+PWGSOHuxuCkdv6Mz0dcYcPKw0uHrx3Jj4JKr6Rx5vkxnOBtKDm7SK3pQLgC8cItY7fJro2GWv3dYOtIkkL8rhSQ6QvGI8Copv9FmJgctv9mkbRWLUyglnfjIDfH6bmJUxVvHAXjeoQHpff4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=kWmUNAE6I+JvtNOrlHcxKPhtv2lYj7F/BCMir5dcm0s=;
 b=R2maZEBR42Ygep24iH3rhG0eBHPurs4ZHmidzLr4ygzbxIOB+HgPVmx3dGfaE976uk7cIZHVVbRDZU12Hnu2NzqjoigJo35UfX2yOCK/SXBc8Lw/Op9hSFQRVDI7R7inoB67Ptug9KuqcC8LVApaVsi4EpW7t7cRuk4CendTzeflXDxgCR/OWO5IWbfKDS5sGKlJDeXXwmElS6YbEKJzN752GI2XRoqfFz3/ebbgNZZZprAsQicixGQpCiyHhd/XQUx7Z7zOc96eZru9gGKTD129+I4Xl9t2FuQEr65OuRmsfqatjgeSW0NTIhBqCt0Pa8hSftKoJaUo2ROESdkb5w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by CH0PR11MB5345.namprd11.prod.outlook.com (2603:10b6:610:b8::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6588.32; Wed, 19 Jul
 2023 13:46:37 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::ced7:8ad:c0fe:93ac]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::ced7:8ad:c0fe:93ac%5]) with mapi id 15.20.6588.031; Wed, 19 Jul 2023
 13:46:37 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Keller, Jacob E" <jacob.e.keller@intel.com>, Intel Wired LAN
 <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: move E810T functions to
 before device agnostic ones
Thread-Index: AQHZtFJeAHjH0kR4g0ituvvtfF+AWq/BJERA
Date: Wed, 19 Jul 2023 13:46:37 +0000
Message-ID: <BN9PR11MB5354467A76F739D8D09B10898039A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230711234734.312895-1-jacob.e.keller@intel.com>
In-Reply-To: <20230711234734.312895-1-jacob.e.keller@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|CH0PR11MB5345:EE_
x-ms-office365-filtering-correlation-id: 640b77db-d3ab-42ad-2749-08db885e9304
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: /cjxPcMfIIPE8tVtsdIFceDMbdqgvAoNXICjHe/HVQgORNKI04ssqYcLtsQj+/VbSlcXfkx2FA1ld+Yak6UDQbwZlIHBca0W5Eabp9q+k8+H5XOAUWn//CrewPNNuSOxpL4+lfXjOOtwMIRjAp4KWeTvjCC1hY4qpFTfdbGGaIjdNNh7d2MObdwnkwRnUaaYcs4/EeiBqjExNWWXnLQT4WXiKCDesNT72GbBheJUHNc/lK8TgaqZU//x68wMbNA/2m7Y3a2jZ/oWKzZd2v3nAxfMVnw7feJpo46+NjISKtH7hHqft2i0zV6pfQr6E2YjhtVerHJPUWkr9tmtmSlzEQZgoWz5FHivvBFi2nfKtWYyk3eRx4kNXzU6d4NsArhOcLxEtIA8XIdC7xzXgfwlILmS1+RwouECwHOUYTCWK5x4DRlcP/uaEdc5CBLcz0B7l/gkjXMWL1aX0QEoGgJbESSpBprRl7MVFMQnXLPKO7k1pLg49dTjCbbYm9WRs51HOXNjnGXAvIZCxmgJRSiBx6kpKpjsM4mVVOWRf8HiD8+paDMlH7QfhkkMQHoAnSfChOgNGl0LM+cQDr371XSEaqU7cGitbBa0y02FbB8sIBg=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(376002)(346002)(396003)(366004)(39860400002)(136003)(451199021)(71200400001)(478600001)(7696005)(83380400001)(110136005)(33656002)(86362001)(38070700005)(55016003)(2906002)(186003)(53546011)(76116006)(26005)(6506007)(107886003)(9686003)(966005)(66476007)(38100700002)(122000001)(82960400001)(4326008)(64756008)(66946007)(66446008)(8936002)(41300700001)(8676002)(5660300002)(52536014)(316002)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?nUM0VwCnxTWqjksbR3jzAhSj1i75mBVSh/yPjVEk7E5PHQL/IfmPg+Oibwuu?=
 =?us-ascii?Q?C/PpHO/ML4DaVtbSWsKDWbs+F9RqlLGbZZNK2JQDK2InhVtpdLbd2D/e86Xe?=
 =?us-ascii?Q?/2zYkSlg9pMVN9Q/Xj8I9lllBvgfZFZvJDw+SUoPmRnwKqjGesKLYvAq2f8s?=
 =?us-ascii?Q?H+AFcoN9zmcOmqebEZ3cTSFXo9rvAINbNXlJ5+lCY2k0v9nqaEt8fcsZfLCJ?=
 =?us-ascii?Q?S9lwpW2ggKWrpeh0jUkE/l0JxC4uPTavPUa/CwVEeqbpuvBtDN4YBxPwetED?=
 =?us-ascii?Q?vxiH8xccNU2ZYUmIGuysTz7oZqDVbwOzYa5WrG/MVphHwQuM/XpeU4vZiUQ2?=
 =?us-ascii?Q?0b4NTizhbRVZgd208VLoLh8Sy/zt6N+vRk+Rp/KofvawRo58NFGVKGgIwJct?=
 =?us-ascii?Q?wTVGeySOfnDR/CYjm1TFpU9Ws5Muj3YwF7RJ0mYQQbpr2JmNubJlU0XKKpjW?=
 =?us-ascii?Q?m2m/bfjJB6OO2pYB8fWFvtgpmYbhVeC9MDponXy+xfCGJBO1DEbBIS8GHA9h?=
 =?us-ascii?Q?9dxvZXgnAJfc7Mnuxveb1aQn2+eNJiraF2HVzkrhvUELUfZEDpdTmvjn8M/G?=
 =?us-ascii?Q?/tC68gZFR1WD9VHROz0T8hX/JXn9SK4EUYoS7zpFmwh6UcMGuFzOew5X703Z?=
 =?us-ascii?Q?B//lFG5bhhvYYa1Velu5BDkBX115Zo8XFi5s6OTF3+TRtwO/Sl9xLNVcEGho?=
 =?us-ascii?Q?BAvxGwrEOP8LCK8XkTS+V4qaz+itDkQWn56oVq8uBX4TuTPpTOB5SYEyd3hh?=
 =?us-ascii?Q?nfUCc0qR54wOTWNmHk/Eg0Llnl/VsgfQPW4aSLEwwnLGor0mftinxgKWyRlB?=
 =?us-ascii?Q?9QNiHss4DV7lVQ+nq3I3mORWrSoPagnPg8yEp7UBYeDS6E0lUNHyj76BPMX9?=
 =?us-ascii?Q?+3zSkODCM7uURicr+LLI430wYqzUcOidlpmFLlRHIH/JJbvsDDZxktzLZZmt?=
 =?us-ascii?Q?Cv5hpGoName4CeWBJhgjIj+Bs1OyXbX1IgmK+tXCh37+RUlglc3wQ93bbkTZ?=
 =?us-ascii?Q?Z0TqE7HCUUm/nmRItmOOWd+CaFTymm0qz3rtzvLrQTY/Q9+6mnJ7Q4wfcxhD?=
 =?us-ascii?Q?f3NTZtQOnCoUWVoeIGq4IZAYbU2F/As8Kgk5VKe6AVSp9tUVEz8gHEalptFb?=
 =?us-ascii?Q?buepcPxKbC/rlZvYoeteQDqSL6JXKvx2Ky3HVU0gp5LGZH0VwHIU5TIbtVAX?=
 =?us-ascii?Q?6e1r0YSVZO+BevTzA893cMqD54tSIwlQeERbhyx+qVYJFe1R2n2xMRzzhfVc?=
 =?us-ascii?Q?vAQu7XVlTXr47JwGnHOnP53swNSlaTSFIB5pMBC4YZrzOeLt3ifkWvFIwZQ+?=
 =?us-ascii?Q?jUFh6Pa0SMZ8vBxMSDVRwg2XM7xsy035Cmlgo3y+6POhUe4ePIZPMp8KAClS?=
 =?us-ascii?Q?fB8QEueG2Nd2w8b6UCM5MPPx5uPEXtie6uvrd9yC33jITCEbwvm6LBe0BNpp?=
 =?us-ascii?Q?Ofzrc2zTTt4YEeo4SBquJA2qJ8/gK10XHEun8rkrvhU7ShpKs3slpxVqT13B?=
 =?us-ascii?Q?OtOLgWPFkHMrnBXmwPDdWJigyERDrmmEturW4VdE3pKSckuLtCDVydomFRaz?=
 =?us-ascii?Q?N9GMYoOTN20xvfC0nkwCVaV9hcZffLLq70unSLjT?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 640b77db-d3ab-42ad-2749-08db885e9304
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jul 2023 13:46:37.7847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QUsR0WosyHr/Y8iBfqkMYMHVPXsN4PS/n+A78tWmBDJfasckKzN6K9tbrzfq19UpZofjNbyex5uGNnA5lqh/rnZ4U8ZXrI/VudB8V7H48DI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH0PR11MB5345
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689774826; x=1721310826;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Ipzl0eRm6Qg0JTAzOu3ksGBiILXFKN6D+VuspbOaClA=;
 b=iEj729sABEb+FL82eSat4HphH5orR8Z81oGgUjbHVZiQKYm7gvcAsdiX
 Y3HCLdxrbvtGM2rNPrxi/aM7oO07OLK5NkzBQ2P6pbD1UltWq0E6jhFJ7
 2vUqZpETmKVJvK4o8pIpSEHtfV/W7JTnDfgLDV3IDIXI2cBtm/rqTFcYU
 rIsk/iHrr/xW7ztUZTA6fm6LkWYApPwa09zOjOU+dU3yC0pXMxkBuma4C
 f1qigosAelxgO+HDm8DnrSjhyid1JZzE03ATbz3xDeR+PIATUYgvIwJNg
 x2qo8tVIXIYSQM4uNqN1Gz9giC6NNq62eFPMQZqG/MbOVpBe10zxsixQj
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iEj729sA
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: move E810T functions to
 before device agnostic ones
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
Cc: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jacob Keller
> Sent: Wednesday, July 12, 2023 5:18 AM
> To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
> Cc: Nguyen, Anthony L <anthony.l.nguyen@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: move E810T functions to before device agnostic ones
>
> Commit 885fe6932a11 ("ice: Add support for SMA control multiplexer") accidentally placed all of the E810T SMA control functions in the middle of the device agnostic functions section of ice_ptp_hw.c
>
> This works fine, but makes it harder for readers to follow. The ice_ptp_hw.c file is layed out such that each hardware family has the specific functions in one block, with the access functions placed at the end of the file.
>
> Move the E810T functions so that they are in a block just after the E810 functions. Also move the ice_get_phy_tx_tstamp_ready_e810 which got added at the end of the E810T block.
>
> This keeps the functions laid out in a logical order and avoids intermixing the generic access functions with the device specific implementations.
>
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 396 ++++++++++----------
>  1 file changed, 198 insertions(+), 198 deletions(-)
>

Tested-by: Arpana Arland <arpanax.arland@intel.com> (A Contingent worker at Intel)
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
