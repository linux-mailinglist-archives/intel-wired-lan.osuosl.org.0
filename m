Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DA633A35BB
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Jun 2021 23:16:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 828A26070C;
	Thu, 10 Jun 2021 21:16:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id MvK5BWDGbYKl; Thu, 10 Jun 2021 21:16:40 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id CED1E60661;
	Thu, 10 Jun 2021 21:16:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BCE0A1BF38A
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:16:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id AABE240202
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:16:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (1024-bit key) header.d=intel.onmicrosoft.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wTqUnCLXYALA for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Jun 2021 21:16:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 980AC400C8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Jun 2021 21:16:33 +0000 (UTC)
IronPort-SDR: JjN88A8CwOgAoNJt/TA0SYPkI9pcL+A8wcrALesIic4paK1538g2MIQHq3cezUvXIWm7rkLpJ0
 0itVkL0Vl3PQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10011"; a="291035893"
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="291035893"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2021 14:16:25 -0700
IronPort-SDR: O7NynyAj0dZZAUqH7nhCmsUuZpwPwMAn3C3fE0tu0SjOwcDptlkaSOMLrsXUOKQN1Q660pbVJG
 8ItVzLN0XVkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,264,1616482800"; d="scan'208";a="448877882"
Received: from fmsmsx604.amr.corp.intel.com ([10.18.126.84])
 by orsmga008.jf.intel.com with ESMTP; 10 Jun 2021 14:16:16 -0700
Received: from fmsmsx607.amr.corp.intel.com (10.18.126.87) by
 fmsmsx604.amr.corp.intel.com (10.18.126.84) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:16:15 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx607.amr.corp.intel.com (10.18.126.87) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.4; Thu, 10 Jun 2021 14:16:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2242.4
 via Frontend Transport; Thu, 10 Jun 2021 14:16:15 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (104.47.58.103)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.4; Thu, 10 Jun 2021 14:16:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ifFtsIJc6yQYK2w8N6QvI5r9MHgkRTnA+hmG5jhQt6YbGnaYV7+gR9BsX3tnbdqgmCnRsrkOxEFHJR19Ft1GrEuJtAaz7x/axxtHrxmyPDUxIGoLtfMmtoTMJz3sDAgD5fv+61RiWjrvjH6sxTJY7qcMPdCeZ3SdqKR2Uw15dEdr0go9DzuxmYHagHLXnLAltjIKTarPZkvgx0fDpCmxkMkJJaKDolCRIr0L9hEyfxd30p7pDzcaO2ko/i9hlbg6Q5HwnAcqC4xZ+hJa7qaQjVd25udQhdHx2aMCCe79Ex+Y2XmzwEva0zTfqzJG0vBee6xVJCeboytTmyh1mq6qKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNCM+ZpPvYWyYEHRgpkNpdSUw2jSURU2kcixfX77iaU=;
 b=bYSa1rh/U0DPq++PgnZ6hWNGIUEMQHjr93dquo9Yc2r5dSmE1vyYAJcNjRpe0N0hGu2Td8AI3S82vWEM9l0ioLQFKWvATSmT11jEns07ihG/4w3RfpVi+5l1BWONqlG03L183XhgdzTxeh+xTPj/bGcSgilZCF84XWxoXaEBiO01vw7M6+iyxj/xa2kDjSAqTqRQFZAIBZ2y/mRd8WEx+MtpBfwQ7Naka7cNADskDtS70x4MhkZxVmL3lpoO9tzvzYdy4n5PaIsy028PrpKv8djfkSA9tw73I+lmyOmqApEJcPsWfxGaCBHKuQYCp4y0/xhdfheCnbRtz1gLt9+IAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=LNCM+ZpPvYWyYEHRgpkNpdSUw2jSURU2kcixfX77iaU=;
 b=D0ttJQa2OqDljxYiLucEc8ccsTw1E7ocOOzCb6EC7daXp6AvQ9Ulmd4ebo73j9umAyPdtN+VBq5ymhJM01cXDho/63HwoQLNRbCuWb5YaU2lkkFL0Nkn2d6EDlVBwX631RHEefBMh49uzR8nS1XQ3fsACAqlgA0XMzM2mSnjwwA=
Received: from CO1PR11MB5105.namprd11.prod.outlook.com (2603:10b6:303:9f::7)
 by CO1PR11MB4770.namprd11.prod.outlook.com (2603:10b6:303:92::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4195.20; Thu, 10 Jun
 2021 21:16:12 +0000
Received: from CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43]) by CO1PR11MB5105.namprd11.prod.outlook.com
 ([fe80::4db9:fe34:a884:4e43%7]) with mapi id 15.20.4195.031; Thu, 10 Jun 2021
 21:16:11 +0000
From: "Brelinski, TonyX" <tonyx.brelinski@intel.com>
To: "Nguyen, Anthony L" <anthony.l.nguyen@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 3/8] ice: add support for set/get of
 driver-stored firmware parameters
Thread-Index: AQHXXU/cMnznlbkEZ0yvjJGAJ/iOYqsNwAXg
Date: Thu, 10 Jun 2021 21:16:11 +0000
Message-ID: <CO1PR11MB510590F24AF96256DCFDAFCCFA359@CO1PR11MB5105.namprd11.prod.outlook.com>
References: <20210609163953.52440-1-anthony.l.nguyen@intel.com>
 <20210609163953.52440-4-anthony.l.nguyen@intel.com>
In-Reply-To: <20210609163953.52440-4-anthony.l.nguyen@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-version: 11.6.0.76
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [71.236.132.75]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 24c2e8c7-e0ad-40ac-a25f-08d92c54f938
x-ms-traffictypediagnostic: CO1PR11MB4770:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CO1PR11MB47702B59961D771DFE3EF375FA359@CO1PR11MB4770.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: VdsXobmH40w1R+lZuTEjtGdFvtgxgBqL8jwDbpEDeg/OYQSNEp8thRQuND+iv+nd0RQgobBxxuhopXsMGXYONStuMXQcZEYCel41NguqcmEMj1UU3M1LGiH1hUx51JamrWvjZmNXDf0/wYB3bFAPINsf8SWRxZnwQ0Za8uk3AHWOiioy4xKhV7jN8UuJVChsd/8QtmNuMSUDiazJtQau7P6sEu9w+RUI3mJoTuKVgO1u3S0HGVhD3o/ihBOqIU7uIESmOb+0z1fL7QZV3j4dycR2dtipgVqYv0H7PsWDmauccwQQTVmTYrxMiFv+hqHrRzDEwgDqux0J+QyxHChQf4ViCiJvyzSH2Y9rqGbSIo3DBW3JYtyZFnsHOEIooSMIr16+yNlwr18zMcYK8405ws5R7oxgvlW6+UGPAwikns5rYIq35EtJj0csfdos7uX8L5FvqI0ks8R+3EgIga5BZ5NwCr4/o8JkCH0fJ6OWIiAGYIeOoL8uplXd+oOmGA3SUKgz4VORDvDJXc/ISgKIWhZI0cgpEIV00tZPBVIFt4FRBJ3WO+PNRj364MgxMCurajz2irdNpMm20LALF3CpuHnz2Cz8OdGHp5BDU5Hic8Q=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5105.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(376002)(366004)(346002)(39860400002)(26005)(186003)(478600001)(55016002)(316002)(33656002)(9686003)(6506007)(110136005)(53546011)(52536014)(64756008)(66946007)(66476007)(66446008)(5660300002)(2906002)(38100700002)(8676002)(71200400001)(122000001)(86362001)(8936002)(83380400001)(66556008)(76116006)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?UgrQvWXJuLtHjztz/xjcmQZCHvZ5p5HKPwlYm0CcrQpleEzg2+WQ1JR6ezoG?=
 =?us-ascii?Q?y8TiOOxCXfsqOt1P4nXlQAmQi+PAyu3v7ZPO/2fmFc+OB+vsJs8iyZQ2lscB?=
 =?us-ascii?Q?JkGVfTX5K39+AjIYtnPQuVdEzQ3TCNtxQ0EG5FXVBPs8C5p6DpB2ZnOUKz6y?=
 =?us-ascii?Q?Evjun8dc6RSx+BUysnG6m7lQJ2ZWQT4r/cDA4nR/PVom7Y/3ppDunJ54+yID?=
 =?us-ascii?Q?gYikHZ5yGHjxxyTN8k2SmkqRge77/0T0IUdgDhwxoeR9ssQC3Z0P78gCLdWL?=
 =?us-ascii?Q?9utetptZsLdXUtbMYadTf75CrCd/GjrzDmH5R7mMjAhdlS3y6LjX7etW27kB?=
 =?us-ascii?Q?mzBA3CtI4GtONht8+axFsyRXUG2GbfqJmWx5Iu6s7vtjk5fNdcFUPEVx57c4?=
 =?us-ascii?Q?c2vA9zEPzSM4+POh3PL69Sm1vZC5GjpFfMw/gtGrPsgr03eXEQDXuQ5ujNnM?=
 =?us-ascii?Q?ZDhbyWvopvgUruh2wXM3fcdC3TOlBtzn74xXqEhXcdXwEY2fDNYh5N3s2Pc8?=
 =?us-ascii?Q?iEN7l8nla9uWckvEOf7vsE5QaQiFDdN+jbw1GxqwvtvidBkEbt4yXnMLMXaZ?=
 =?us-ascii?Q?ylBxD1nwOyGv+By3b5qw6lfhtsHQ5pJuXrvlUy6oJGAr1ff7Dtj2/0aQ8ouG?=
 =?us-ascii?Q?fqOTTLlMutOCDGabGkUm0ICDc21FvkM4XdQkc8a321sn2+l0unYCBILhK+r8?=
 =?us-ascii?Q?coJSGHvjqsEPAJ6Bcs95fW7uqsQVK3MGbVE8aJhnOecE5iqiE4506Fg3NhAm?=
 =?us-ascii?Q?kCdcKHjUqjMGCNb52Ora2blK1VPiELiOmpBf1xn1TNbFsHDRz+d8DnKgN73e?=
 =?us-ascii?Q?XXcQ3++ZFGO4nCqB/4HIX32FxJfY0I4crMhL/p8Dgp5UTpMYJg/jLPspvnWb?=
 =?us-ascii?Q?MZfVhFZhPJ+3yQcqbhzeWLA830nSGorEF7LIqX0hCaTYA00rNskW6HzcVQBg?=
 =?us-ascii?Q?LszGVe4w8MFW0Sl/RzV+N7s1PgJr3qEeGqTqaqStFyg3KikUiRNTzS0ao9sZ?=
 =?us-ascii?Q?oYRYrLBhiNX0zumUc3J8RIN4AkiB55PuORWKBQKEm5K8XIq4Z0X2qhkkpjbR?=
 =?us-ascii?Q?VmJPuO4jEqrlcqg0p+Zp910zODQfnGGGh3RkRYqhZYPZ+UPIOUDYntKI4iy4?=
 =?us-ascii?Q?mWy+kl5lWaAeLJw4oJD/3St8Ogm1IFWSR2FmA1LrZ59tOJMuSt40X28ccEP6?=
 =?us-ascii?Q?hPQnSnFRi8Isdx8P0eQQJZUfniMC1kSrVr1zXdYGZBgVyhUl4T6gdjKPnQcK?=
 =?us-ascii?Q?yEAtZlu5Y/0q/AOTLsjWorQafzNnj51B0xqjWE2IZWAXPIyAF58XoeVeiiNq?=
 =?us-ascii?Q?1vM8Px7dVsD2pnTKNqru2/Vv?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5105.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 24c2e8c7-e0ad-40ac-a25f-08d92c54f938
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jun 2021 21:16:11.9022 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3tqF/74z0Ax1e2xYvfy2X1/dsX+GBjsQa45xHvrTZkqy1RjPgj9bVmbjVUR987rZ4+pqxx2qyYfu2uhSElOB3BOpHzkhUUmtKSZmj/wN+8s=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4770
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 3/8] ice: add support for set/get
 of driver-stored firmware parameters
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
> Tony Nguyen
> Sent: Wednesday, June 9, 2021 9:40 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 3/8] ice: add support for set/get of
> driver-stored firmware parameters
> 
> From: Jacob Keller <jacob.e.keller@intel.com>
> 
> Depending on the device configuration, the ice hardware may share the PTP
> hardware clock timer between multiple PFs. Each PF is informed by firmware
> during initialization of the PTP timer association.
> 
> When bringing up PTP, only the PFs which own the timer shall allocate a PTP
> hardware clock. Other PFs associated with that timer must report the correct
> PTP clock index in order to allow userspace software the ability to know
> which ports are connected to the same clock.
> 
> To support this, the firmware has driver shared parameters. These
> parameters enable one PF to write the clock index into firmware, and have
> other PFs read the associated value out. This enables the driver to have only
> a single PF allocate and control the device timer registers, while other PFs
> associated with that timer can report the correct clock in the
> ETHTOOL_GET_TS_INFO report.
> 
> Add support for the necessary admin queue commands to enable reading
> and writing of the driver shared parameters. This will be used in a future
> change to enable sharing the PTP clock index between PF drivers.
> 
> Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
> ---
>  .../net/ethernet/intel/ice/ice_adminq_cmd.h   | 27 +++++++
>  drivers/net/ethernet/intel/ice/ice_common.c   | 75
> +++++++++++++++++++
>  drivers/net/ethernet/intel/ice/ice_common.h   |  6 ++
>  3 files changed, 108 insertions(+)

Tested-by: Tony Brelinski <tonyx.brelinski@intel.com> (A Contingent Worker at Intel)


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
