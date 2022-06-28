Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C1D9855C932
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 Jun 2022 14:56:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 03B21416CA;
	Tue, 28 Jun 2022 12:56:37 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 03B21416CA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1656420997;
	bh=U1vcnk5lx4qtgfi+/u2IJ88eGtLMHQAboi6pB9/N20w=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=OJDnxTQVFitdS24RHLToFANjB4ZVPq8neNx7dYB94zOPI6E0yabBSTwdFKCNLKPMj
	 3/Adcn6DRUlIZ+ujhzUDnOxF15pexzov/xfcVRegHy2oYUnHVuNRBc6SeWX4tNptpc
	 pi7tJA0pcRWaUDgRuZmTRwmviA0Bol9GIqeISaubxuysRYLah3cEr6Wsj8souCPGmr
	 iJKku16AuuZVMxGKK3mtXAn87TFfZ3QAqZP5agalxa58paHP5QTxkwy3d0DOYf8zJ5
	 D8k12fvsHY0TaU0WFBD/MmGLlSmlSw6K0f35mdkGmyW8Vt9mqU1r8+EM/mAwDM8i0M
	 po4xeAqpAjDyw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J16zP9olJuGG; Tue, 28 Jun 2022 12:56:36 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9F0C940A05;
	Tue, 28 Jun 2022 12:56:35 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9F0C940A05
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 806261BF3B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 12:56:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 56D1D40A7A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 12:56:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 56D1D40A7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bSHB0ugN1Z5y for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 Jun 2022 12:56:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 008B040A05
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 008B040A05
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 Jun 2022 12:56:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10391"; a="343422953"
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="343422953"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Jun 2022 05:56:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.92,227,1650956400"; d="scan'208";a="717434188"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga004.jf.intel.com with ESMTP; 28 Jun 2022 05:56:27 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 05:56:27 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27; Tue, 28 Jun 2022 05:56:27 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.27 via Frontend Transport; Tue, 28 Jun 2022 05:56:27 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Tue, 28 Jun 2022 05:56:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Z2Xn4xYPSJkRkBY1CXFLuRNd8GGf7V64+t+yh0r4TJ56XJAwSMniIzTKuTGVVmnQRsVjzeHZ6V8x4W0fRZFJnOB3/g97bjcaIV/zUGHjraHD7w7GzfUN/OcPQHiH7UfByk3dYOmvX6aI0/JAW9k60EwaWNg7OZy8RiWGDcRB/80686bqZHtjGa4aXrmb8TsZDx4gOeBWR/2evK1qGZ91JxsG0ww4F7P6ZklmEbMCiSt3IlpaAPuiJ/Pb62z8ShizlyemBa/2xbd85bMEbQJS3rnGhqcgOKybAT3y6QCbyP9jY1o3aa/p165xuCAU4BSqAPfKCxBFRwCqvu3g84d2gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GT0Y4G2jozeN5kG+qWYgRJmc6fRF9kqpa42U2/hj+Pk=;
 b=j5ApyYd6nrBvg2iT1dBY/Gy0YAnAxgPbnTSy3aTLg06Scv+T9xmDLDzaETgLW7cD/i9oZR+wh6KwcTN40KE6aCkO0hpxaJv2K9RernrBf7QGhGl01FqlwrU0KE5D1ggLm4vY8snvdKkSz+kOUp3IKTvpLuweV053ru1+vfC3XuPVRwfsLyBVpBkTvGo7rGV9U1CrFv49xiNqCzQJ7Ct04BMg/CVAHX1DQ5DEfgN3UK8vbOGMqOuVHAfPNvasiZcOBZWmkh4ItX2UuzY0DdaH4NcuNyJx+23Zsl2kT03NNb9xuZihxsmWqudwNwPnQNkOFWjGPy6O/1CpI4o7x4vrUQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW3PR11MB4554.namprd11.prod.outlook.com (2603:10b6:303:5d::7)
 by PH7PR11MB6428.namprd11.prod.outlook.com (2603:10b6:510:1f4::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5373.18; Tue, 28 Jun
 2022 12:56:25 +0000
Received: from MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa]) by MW3PR11MB4554.namprd11.prod.outlook.com
 ([fe80::21ae:2153:219e:b4aa%7]) with mapi id 15.20.5373.018; Tue, 28 Jun 2022
 12:56:25 +0000
From: "Penigalapati, Sandeep" <sandeep.penigalapati@intel.com>
To: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH net-next] ice: switch: dynamically add
 vlan headers to a dummy packets
Thread-Index: AQHYVPoGWWoaTboXC0eB/YRii2cWSa1lMrmw
Date: Tue, 28 Jun 2022 12:56:25 +0000
Message-ID: <MW3PR11MB455462E0C270B08BA99ABFAC9CB89@MW3PR11MB4554.namprd11.prod.outlook.com>
References: <20220420210048.5809-1-martyna.szapar-mudlaw@intel.com>
In-Reply-To: <20220420210048.5809-1-martyna.szapar-mudlaw@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-reaction: no-action
dlp-version: 11.6.500.17
dlp-product: dlpe-windows
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 773f148f-5254-4633-01d6-08da59059c1d
x-ms-traffictypediagnostic: PH7PR11MB6428:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ouIjQwSyFGPwvXyMwwQtpisNb7DmIolmIOOwv+IttFkF73eaP5Pk9uSof1I5vZ9qmWkvS33R+QTUtBJYecLNTd3h8bZgzNllFeVf3HvcQdmUE5/4o1e154hRzF6+Up1VqjwgRK2ME07XUTqom7TMgz0Gg1eQi2sRMOr7osy0vHaDPanbw/+u9cJ/F055sIslJEOJCQISeU4H9GOBMXv+nc9OjrXC/b3CbMqUbSrUb+WEjLHz2yf5bdAfQISY6TKmQu0sXuNs7Btu/ae0nbqI9qIcCyTmOVlT64PKO0UUokogFV5yqKo/U33Z+riie3z6H4oaNspem/VI9uk6+hbZEg05TxGe86An6vAHTDwQp0sX8QTbUqlvZea8RikiNd3h4PCfGAm8BzZnPG1KU6ky/T8VicTE4x6x6XGeOJ1t6TsC2bkolcqLzdWOKv07Y+ZcjMmY0dAZ238Ehr52J7ptkep3EL0BAHkQUxOdePXmgYHiG160YSZG0oEMorfRYUGYqbJaCGpsieZ089p8zkYed7BYyIFKW/g07mS0A4xsXW2MJpHu8WjkhkW3VX8sKYDIQeNSUBoyyujhcWM0aUDSc6fNs+0T1MLFkLQmgcOv9cBBi39eiUzqW5AnT9GNCim+4xRG87H3LkUlbbskBsvLiSkrTLya9xG9LRrX0N1f/kb4GvjlcCQYGNPucxvCSslv/aM6KMcjat+TN8de9pZ8EMQ+hqGVMS29MeJBg7zNArroZwhtPcpbNPXNAzjJxPdwQFsgMGhZnecOoi31veidaYRU3UJZz4BmDFuywSSObdk=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW3PR11MB4554.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(396003)(346002)(136003)(39860400002)(366004)(376002)(38070700005)(82960400001)(66556008)(4326008)(52536014)(8676002)(64756008)(66946007)(86362001)(71200400001)(66476007)(9686003)(6506007)(41300700001)(76116006)(26005)(66446008)(2906002)(478600001)(7696005)(186003)(33656002)(55016003)(38100700002)(8936002)(122000001)(107886003)(110136005)(5660300002)(316002)(4744005)(83380400001);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?f0Zw78yA/C67DpiVpbnXo6xKsXAbB4OvDThxFxn/dIp5p5HQx+e/6LPfH5W4?=
 =?us-ascii?Q?y7V20f1RQspWOjgf7DlpZprDVj8eOv99eHnvAWAuPcMlx/unMnmxA497ImnR?=
 =?us-ascii?Q?cZiKUUfOT7DuHEXIeDldleivqkl/kbzV+7LSJw0P4vSZqZFJJeit4i9HNsDR?=
 =?us-ascii?Q?SK/rRzwhcnw/lF/jAmFYv23gWNQdEEcwmMq96b8h2Mi19hGgVtOIYATCXswE?=
 =?us-ascii?Q?JnL/bEu0prkRvrI4Avw+yy07QUozKn7QmRKzhma1x4b7SivLuUdpyLdKOIdr?=
 =?us-ascii?Q?qtKNIVVPDJFbM2oG1wkd/NtXb2G03pPcwHjbBrN/g8ZvZwitR11b1iI9ItUM?=
 =?us-ascii?Q?sTKehRYmD3kDpiFZoSCUDHunMaXfMT8w/Df2WY1nrX80wvPKjm7ZXJEU8e1/?=
 =?us-ascii?Q?HZ1bU0nHM9KbTGIrAXPp0G881Ddqm717r8l+JOcKI1hQoFjpP+Ke88wfiPHv?=
 =?us-ascii?Q?Bd59Vzlehq2/+8qF/3km4irLhQ/JGttFHBB+UhX64sAYBmKsALBgS/js6F4q?=
 =?us-ascii?Q?udA0lU2lg+5szzAlMGkH1KdFxalqsMbGGHNtMiAVa/pukqEzUv8QLNOlUeta?=
 =?us-ascii?Q?KQFSHIiKbxofqgMF/PAj/qsYCd0f30owl50/jZS6TebWER72JKYaZviMvv35?=
 =?us-ascii?Q?BetRck2L6eomrERMixXxMd5BaITt3NLC6FpWNGSsFqGsgutM9LIChlQzESek?=
 =?us-ascii?Q?5PrvlJfNqpwbipXb+7vR3cDuropcdc95tbeoN8YgQvyiVuUjJ4MsSA1Tkh5H?=
 =?us-ascii?Q?lgIPhw8jqoPwlh/jE4Vjz//UUiRC8kjtzULykGw1dXqdlOrZZbObebkejGt7?=
 =?us-ascii?Q?9tqIVMMMnsTtRvaj3pl0IzY/X/KYaOF0/PcD8fYGskZKFBmEbavx+lGtq+PE?=
 =?us-ascii?Q?4rAxHE17MbPN4/SVVkNSK+R2XP3gU/hQ2DFLhLkOj7MC/s7HBiaMt5ok624R?=
 =?us-ascii?Q?MuKou7YhIpq70BuhYg/ObS4zNHxJ/Jy4pe6acSuiCngVJNJz0aHeBq5ygeID?=
 =?us-ascii?Q?ocS1vJJYgO992H5NcPkKg4BK/XrJt3xTnpwT47aEG3XwbX6uHEeK/n1ou2eH?=
 =?us-ascii?Q?/vApCQACxcfEN14IQyQFAXyBRonTnzDoySDGG37y4Vc5OMrRkKlQKpJ11+6D?=
 =?us-ascii?Q?gW43a5nubIunM7JXPtFqq/iSoW9R/aRynwbKfF2kHidGgxq2RSo2H4SRyuby?=
 =?us-ascii?Q?ZSEBfV1RsVHNcn1NpKTkeuMY/pHTmjHDcEckKzh1d7WqmwkjIdvRS1HR29PC?=
 =?us-ascii?Q?vAkbDFR0+5GhNt2XOg3DdnSFvZmo62GxuwzUP7lQZZQ2viBKBojVDgzXiUMr?=
 =?us-ascii?Q?Vvuy+jGkNtqFbINkcVzj1wGn6URPWntguF6VmXBaEhIO5tAwVRxuQBM2O1jL?=
 =?us-ascii?Q?0HiXpvnAPsXo89Kszwqg2VOy1CABU5brJlX2l9Qt8iuxPPqX0fAilJSIHu7J?=
 =?us-ascii?Q?zCPkFJ5YjSAXcrofPh+3+omsjs3kXrlsvklLxGLlRf4cOdQQBv/8qYwbrJX5?=
 =?us-ascii?Q?JjYq2fhlqIvR6wGfPl+261UfYFrH5ocMzuBZ3773ogam/QZ7632h/1qpDSDD?=
 =?us-ascii?Q?ZaCXAgWfD1qXYwe5QnNwgzFIkddSm9HE+PEUBkl0m6Y0UnhDLbPpHKMsrFlN?=
 =?us-ascii?Q?qA=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW3PR11MB4554.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 773f148f-5254-4633-01d6-08da59059c1d
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Jun 2022 12:56:25.4733 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: JEIT2CZhCCicYBzvcH3WvEQ+68KefYrE0Zlw89yquakm4/00OnIabPn1bBEOLBvS553J9KcIDqZNK8809LTsizI0+sQlHE0Lne3bRyt7MeM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6428
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1656420989; x=1687956989;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=GT0Y4G2jozeN5kG+qWYgRJmc6fRF9kqpa42U2/hj+Pk=;
 b=aR4m6CTaNYCHiuFwopO7hIFpUOg417n1afH/XodAsZgDfOFovkOIlLBt
 tqWgEVhEzXhiOxS7XYLj7J8zQiZoYjrTF2rfkotIV66dUdm8+i9GRVb2e
 7K/10J9JJVrXYkOMo9Rawllw4y6lkK39/FKBYPnbRcuIWkJGc/xjAfCHF
 aii7q8tMjbhvZAN/dic1riwg9rkJbKECGzvru++U71APchCh1VnQesyav
 2RFgetq9SNPS7EWFx/EA3MIf8ENRL0eLlkLYd5xaq9Llhy8uzBwAsRP5J
 ZxZALK4IbqOcJcWG1jNMP3picJ7ozUkOTcbw7VqCqyHphQohH2rTIgXel
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aR4m6CTa
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH net-next] ice: switch: dynamically add
 vlan headers to a dummy packets
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
Cc: "Szapar-Mudlaw, Martyna" <martyna.szapar-mudlaw@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

>-----Original Message-----
>From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
>Martyna Szapar-Mudlaw
>Sent: Thursday, April 21, 2022 2:31 AM
>To: intel-wired-lan@lists.osuosl.org
>Cc: Szapar-Mudlaw, Martyna <martyna.szapar-mudlaw@intel.com>
>Subject: [Intel-wired-lan] [PATCH net-next] ice: switch: dynamically add vlan
>headers to a dummy packets
>
>Enable the support of creating all kinds of declared dummy packets with the
>vlan tags by inserting vlan headers (single vlan and qinq
>cases) if needed.
>Decrease in the number of declared dummy packets and increase in the
>possible packet's combinations for adding switch rules.
>
>This change enables support of creating filters that match both on vlan +
>tunnels properties in switchdev.
>
>Signed-off-by: Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@intel.com>
>Reviewed-by: Alexander Lobakin <alexandr.lobakin@intel.com>
>---
> drivers/net/ethernet/intel/ice/ice_switch.c | 537 +++++---------------
> 1 file changed, 140 insertions(+), 397 deletions(-)
>
Tested-by: Sandeep Penigalapati <sandeep.penigalapati@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
