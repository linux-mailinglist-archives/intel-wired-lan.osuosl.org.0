Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 02014206968
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 Jun 2020 03:18:51 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 6012888564;
	Wed, 24 Jun 2020 01:18:49 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bKsgnCIT6vi5; Wed, 24 Jun 2020 01:18:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BCAF188518;
	Wed, 24 Jun 2020 01:18:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 524521BF477
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:18:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 4E5578788E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:18:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id pUIwIR8OEWbR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 Jun 2020 01:18:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id CA53787722
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 Jun 2020 01:18:45 +0000 (UTC)
IronPort-SDR: gCgr8RyhIQGEIoMZPkb0fkFRhihWnCPucvrRl7JHwPK4CizkopqnYTR0BdZO79Nlz/U7rpFmKY
 UH8tTq9tcJJQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9661"; a="124540903"
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="124540903"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jun 2020 18:18:45 -0700
IronPort-SDR: /E3tQyyTFsPaw+EkgAUnveuSbmKK0uG7X9aCo7ohz4WXPp5UdXADcChZFXLRyqvJkNk1VN4ZId
 ilpMedvl+h8Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,273,1589266800"; d="scan'208";a="319312619"
Received: from orsmsx104.amr.corp.intel.com ([10.22.225.131])
 by FMSMGA003.fm.intel.com with ESMTP; 23 Jun 2020 18:18:45 -0700
Received: from orsmsx124.amr.corp.intel.com (10.22.240.120) by
 ORSMSX104.amr.corp.intel.com (10.22.225.131) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:18:45 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX124.amr.corp.intel.com (10.22.240.120) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 23 Jun 2020 18:18:44 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (104.47.44.50) by
 edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server
 (TLS) id 14.3.439.0; Tue, 23 Jun 2020 18:18:44 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=RVG/a/ZnNqaCjESh+ZYxNjySNCmFqkt6LXJz4gwSaC9oaxd9sbdImbr7P33JhmnxkZreRJbtLb+ynzYtWAJgJ3C1/DaTfDCVjKJhWgP139x6+iQ5LqIBtcThdlcc7PIARpek/vAd3JhrdfYiVCZQfNd9E3IlMSTjQFGO3awHqScqumGwPEEriKCrQvrsPKhz0ejK6r+wnsm9JpEJ3pcmP27PoihqgC9rjMjhjbariHhGhehsiB1on2fv0n5x5RSwL5Ki3h92648/jEIpPLPIlifmwWyihdNQsApYt+9uhH7j1zjF8x6KhGHTnbuSnriKTIoSzPV5NoRkPXFOoZCHaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqNay1XINO1PYmggLPezdcfOA5jVbLeoi2Jp1xexhUo=;
 b=hY6agJYW1m9SYUZJQ/l1JWdpGJ5R6DumaFlBxLMoI4Brg2+7qIkBxuHlXyd73bqTU5F+aLrQGHQWJ8Uk8GaoJV9MZH1d+swiNoMcXNCBtzGo6f1RelWxjWzH9J1gFm/3eyJ0s6tacLCQPxUuwgxwUwSWquwqeYpjwBYLVMf03ggyUXL/29IAMKKwmNfS8qAFTTeCHkO/FqpfUW+RzVeNgTeyrO6v9duDiSlCjzsOhHfDKC5lakcRlj3oOFeqHeHZMJjnAw2ecyjZBjYmL3QYfcEFCMQNVCAkrT6H7ztvZnTieE3qZp/3MgBinrN6Dz6NJmwZbzordvf79DIPAPZCDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=EqNay1XINO1PYmggLPezdcfOA5jVbLeoi2Jp1xexhUo=;
 b=H3NPI/XEuuyUBw3wPjd/xGfMgko2kllJRflGbYIHZD1aEER/kEP3nxMHsdqTsk2XnnnDXccPO7hO6DGI43M43/Gql1yxOcWCODpZd9bAXPseP0LY6XeVz36yZsFv84qSWC5iGfMrVscslHNPkJh4Fx7ztB9pb2L3Pw1Tm+I+tjk=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3660.namprd11.prod.outlook.com (2603:10b6:5:13c::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3109.22; Wed, 24 Jun 2020 01:18:42 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3109.027; Wed, 24 Jun 2020
 01:18:42 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unneeded check for
 copper media type
Thread-Index: AQHWPyTEITVxRgqMcUCanPtf9iSRUajnDF5g
Date: Wed, 24 Jun 2020 01:18:42 +0000
Message-ID: <DM6PR11MB2890658344D0295680935F05BC950@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200610124308.41422-1-sasha.neftin@intel.com>
In-Reply-To: <20200610124308.41422-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [192.55.52.199]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: bda61530-8e7b-40dd-75a8-08d817dc88a9
x-ms-traffictypediagnostic: DM6PR11MB3660:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB36602D59E67965369BA99EECBC950@DM6PR11MB3660.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1775;
x-forefront-prvs: 0444EB1997
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: T/HcNT78fPy+BBeqUOC9x0nm/l6IRSomkGpKcdARTrBllG7/kAalzBlfoGJf8V17Ih7C1q7oLgxOAzmBIo/4Fb+TCTli/i0YMYjrmyhXDLcxjhw1yWJA5ca/O4Y7ne56+Bk0FN12ADKOSLH+P7sEu9yEbSkpm5ikTC9iQAu6mewRSRwt9baoqz6ov2QJC0L5BjGSTudno+2sJZG2Hq62eUE3LKP+htGfw6sriYUXKYhoSLQnqRIRxWi/bmVaA9KFjX8ZO4bNcF5NKr5thaxfxNkqQVEz5UzdiySt16YkGQq3ul5kv+7qQ7gWyTWUgZgm
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(376002)(366004)(396003)(346002)(39860400002)(2906002)(86362001)(8936002)(478600001)(8676002)(83380400001)(110136005)(55016002)(26005)(66476007)(33656002)(66556008)(9686003)(6506007)(53546011)(186003)(7696005)(66446008)(66946007)(64756008)(76116006)(52536014)(4744005)(5660300002)(71200400001)(316002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: 565OAROqKHCGi8/rYvw5Li0X6iNXIqh4JA0b0JB15U5Pr/DnCo5xtKXHvtDA3laWXjI1tCjt8dGegN7MLSs/g8O3L4BLmH6myTIxmCqzF6lCo82nug3u2KFhgz8RTO0UzB1ZJS9ZGQDc1V1REaugwbJs6EahNisAA7pC/rodCiPXfj9VJZXuaC41zHKE3U1H/n21So1W7rIn1wQe+ZhvPqB7Y2lgdE4EdLqfiligQbbeQKUusjw1IkWnDScPnbAkSHCMIzn2NVj3IdBWI821lp0fcCNXxI1jq4LNzk5KtMWPiBhCYDmLU+8JmCXDH6QHW1gn6FzxEoZzBnEs2HJvBPrYlEPvpehFRL6qUtLWNxfSJu1nxUotQXdBtNFq7cxEc/KNN9KAHgL6oLk7Aq6TzdLmh6Iil6w5XmhQ0qcfhpASSW54wMR+DUGVV1mV7w2sM9Tu5GvoHNc5allMRjD86SBIeRDCfqKtod61Js48PqK1r1xxx8HoApteg3M59R1i
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: bda61530-8e7b-40dd-75a8-08d817dc88a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2020 01:18:42.4716 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hpOCGUPNA6fZCM6aTKJ7ictJxUUj4xQUJ7Zz2mZE23PB0f3MBdBFSVBdOK8U9fEaD6Ig51zQOyRjwqvAJVZ2pw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3660
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unneeded check for
 copper media type
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of
> Sasha Neftin
> Sent: Wednesday, June 10, 2020 5:43 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v2 1/1] igc: Remove unneeded check for
> copper media type
> 
> PHY of the i225 device support only copper mode.
> There is no point to check media type in the
> igc_power_up_link() method.
> 
> v1->v2:
> Address community comment and correct the title
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_main.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 

Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
