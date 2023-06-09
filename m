Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D5383729656
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Jun 2023 12:10:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id C655961598;
	Fri,  9 Jun 2023 10:10:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C655961598
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686305413;
	bh=Gxf2d2yN0p+q75bFAeVdxiC1ECE3BDDqo/puAEWA+ss=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ap5WQKUK3avLkKyp+ePEtxp4q64LF/N1GCxuvppe3/raDdl4pV+jIJf9+F0Wa0zgD
	 sKHrWSksi46hEb3N5Ok9Zs0EFRG61koZf5AFMSB8WWnd8njrabdUl5ozjm6RNhut0Z
	 l8PaIK5tTXvdjt8FwA/CeT/CeFATcY9/PvPaeQeC3MjGeeoskt3l+nQMlfJZkbjgG9
	 89yvP6r0jjBYiPclQb4qgUZXcqEJ+1NXm+TWArOkpFQHVQaXsduCYoUCi8wS8EXme5
	 1fpVsZLjjzDpjq21SEgtSziLU4oBZD815EMEqxGaS8TcB+DvOflv3EkqSUDhaPx2Gm
	 hPxH8K70ikKPw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id mZi5fhcjRLVn; Fri,  9 Jun 2023 10:10:12 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B1C160C33;
	Fri,  9 Jun 2023 10:10:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6B1C160C33
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 4591A1BF384
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:10:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 16A2F841AD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:10:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 16A2F841AD
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id r0dR0aDfRuXr for <intel-wired-lan@lists.osuosl.org>;
 Fri,  9 Jun 2023 10:10:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 90D3283C27
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 90D3283C27
 for <intel-wired-lan@lists.osuosl.org>; Fri,  9 Jun 2023 10:10:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="360048096"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="360048096"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jun 2023 03:10:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10735"; a="884526801"
X-IronPort-AV: E=Sophos;i="6.00,228,1681196400"; d="scan'208";a="884526801"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by orsmga005.jf.intel.com with ESMTP; 09 Jun 2023 03:10:03 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 03:10:04 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23; Fri, 9 Jun 2023 03:10:03 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.23 via Frontend Transport; Fri, 9 Jun 2023 03:10:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.106)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.23; Fri, 9 Jun 2023 03:10:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bvSVABnyMBQL0y1l2Cupboey/pJUH0HVuEdcT+6SsnAcRN/K1ZnFUJeSFXwPfQ4QbfxZv99c8q9qajNvAd+8PiSHvbow1ksDwKVYEKi181QrPCjMJnG9u6ID8SlCcaB92VheTwO5IubZarAFVmv2LauEJvVfr37Owr1z34DKvLgyi+0kjmfpoqrWZW8Y1pICxw3eIHZzhrAldY5IWfWnVXv6ZOa5EpAkvdAAXjyKYn44u0L3fQeK7A0dGN2HDxNDpXJ/ctnMzbCasLRqebnXsFpYJcrn3uWT5OrYm92B08KXuUDz6GynIFPXak6MgTm97t4q9rCeQf0pazcRCPAPlA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ifk6kpC+A5FtBBcFTdeJVCVeGRvRoA+ePwSbT1704iU=;
 b=O+HAFhTZ13RBp3taESe8XwSGBY1wEDN8nL9ELc2UlvSKv+/FlOyb3OhgtCNY7vRg6DFhfAc05by9rm6aZtlQlGkhBTtj8zklPcTRGIbVTn+qrQQVAe9vwGAPoa17NOgwSXr0EIiREMhkf2sxOJxbXwUCZRcgS9dX9lXzRICOlH1eS5BBrSJvo5QsCttFCbwEHOCKlMI4XmfdNGbMGqy4V1NQlj3cOmOR0ij2KOw7lz5kst/KHQsjGgikbXVIXjIZu1h6a+gMalH9KXuBG99Fr+/dYdiIE5IhUsdrPtzZbb73V23yQP/txkNznhLdD/Hh4do2SyxNaWgPIOumZhm7Hg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BN9PR11MB5354.namprd11.prod.outlook.com (2603:10b6:408:11b::7)
 by CY8PR11MB7011.namprd11.prod.outlook.com (2603:10b6:930:55::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6455.33; Fri, 9 Jun
 2023 10:09:55 +0000
Received: from BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf]) by BN9PR11MB5354.namprd11.prod.outlook.com
 ([fe80::cf52:d7:14f9:f2bf%4]) with mapi id 15.20.6455.043; Fri, 9 Jun 2023
 10:09:53 +0000
From: "Arland, ArpanaX" <arpanax.arland@intel.com>
To: "Kitszel, Przemyslaw" <przemyslaw.kitszel@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove null checks
 before devm_kfree() calls
Thread-Index: AQHZk7z0foHHcPUwdkK7BDzseewria+CTCPg
Date: Fri, 9 Jun 2023 10:09:53 +0000
Message-ID: <BN9PR11MB5354D24F01D5D231A20C65B98051A@BN9PR11MB5354.namprd11.prod.outlook.com>
References: <20230531123840.20346-1-przemyslaw.kitszel@intel.com>
In-Reply-To: <20230531123840.20346-1-przemyslaw.kitszel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BN9PR11MB5354:EE_|CY8PR11MB7011:EE_
x-ms-office365-filtering-correlation-id: a201ed3a-9c4b-4c99-a5b5-08db68d1ab5d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 9tUqa4QyS2dszLM8jslVtpAQzvZzxuUR+Ov1l6sh03wRlALZ6vIPu8lgJ3+5Ym1LRpmlO5E79IcDxvKsPo8V33hmbL2bDT/YlCZK6MWXzuCWMT10MwTOkvBBEN1KiMeQ2Jh4KqAYelF2J+ETgjiWhJU+nl2isZVKF0UZyrymoVv+cra96OyQq0GHbaWUpUexBx19tG92TU2Br30THsp92cZdZn4GTGgZJG8JNtBFGhKWDSm0AHClrONfHSqKzzddFH0ZDozLZk+bPI8SZ9t0f9iMIL/UD9iaPf6LZ+DuLKwL2+z6JjJChiB9lwGV7tKORvCHDF7KQ8ev5nNSDusFd1fXxpBQM8HH1r6NZEEFPW5u7o6Fv/5gMR8w0qt5hPY2taZ+fwxP9A4FAA9agsQSbkChFWQ/5+5JjJkzKOnJHwzgxBiuDWQDACiwrBD8sfJzisVLGsz0Z81ymn+TzVYEU1T7a6QGgWzMQOsyNsxasQQIycnv1OkxZyoPoTYIKOTosRhLxPwqUJfST7/DKBL+80voQwkAKik/yaD+zbOISV4uWVlRSAiCLCqLctCKXVqt4cN6z27AibnlOCd8s+1USRxq+kG+9AbRXZc3Gh4x5jE=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BN9PR11MB5354.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230028)(136003)(346002)(39860400002)(396003)(366004)(376002)(451199021)(110136005)(2906002)(38070700005)(54906003)(71200400001)(478600001)(33656002)(86362001)(52536014)(38100700002)(41300700001)(8676002)(5660300002)(82960400001)(55016003)(8936002)(122000001)(66476007)(4326008)(66556008)(66946007)(83380400001)(76116006)(64756008)(6506007)(26005)(53546011)(9686003)(66446008)(186003)(316002)(966005)(7696005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?0m/fUAuqWdrwtFKvbnoVgD19wxtQmZ2clIS6WKVDIiU3AJ2BtGiQBZf6VorP?=
 =?us-ascii?Q?RJk/kNUHvSbytI8d/Ay55MqhgQVmfExfGP6WSNLLpj/weDv2JqMN75CkmsoC?=
 =?us-ascii?Q?SKMNjPEt6WdxGMtHI4GolO+LyFBEJN6MAFfO94K0uM0b5sRCfF9KLEiS7+ni?=
 =?us-ascii?Q?qdcpTQN6yKoiDBV52qbVQFeALW373QvqzZUeW2mNcxUo3GdDtSisaX0o7bXi?=
 =?us-ascii?Q?NpvxugaZBU2o1JBi5e9cz8uMq1QN/dDrtlXqMWXA+OPlsGPhkIBjWwLW4hfc?=
 =?us-ascii?Q?oGxzgT3JS2K8LZsUquijuQMPoiZaN261a2fEWORkCumTwSMvdkREnWTe7ZYx?=
 =?us-ascii?Q?dxEalqvBPWKyOtGc/+6FnOXPWbWv4iahWZy+c9maz58a1Vx5TQT5iwBF0XgR?=
 =?us-ascii?Q?BF7NOaedVQ1xdxD+TOWC+WH0927NlLPZOW5+mf7C+UuyyIei+NSK6K5pAo1G?=
 =?us-ascii?Q?OD8L8kCWKxo7S40FPnMxwPA9Zk0SqTfpunkTyMlDx+DOBVCmnrz74P5xPLWk?=
 =?us-ascii?Q?+JF4RbdRq21D/CQG3YBdwix6BuE9g0beenLnT1voYaQSkr6XzZG5JFMpAuVg?=
 =?us-ascii?Q?woSR25gfkj9FrH5oUjhapPg+6HWFxCS41jCHun0BXMuSe3fteagkauYrqb9h?=
 =?us-ascii?Q?GvQSQ6PzOArI9SMv1v1lPRCRnUQrLPzNy8IF496LSpE8xB0uKETR0JCqytdI?=
 =?us-ascii?Q?Ke7aJNuxGhi0XoFN8v7Z5svJVV4cCP5lZQCAwxZ8ELCUjSVO30NKOAiIHVGx?=
 =?us-ascii?Q?VFNWk2fbIXjJ4BTzAoenBeowqjC2UwtaEs2jsiN6y/wRtkXT1BEO2hbOIx8s?=
 =?us-ascii?Q?SxlP7kx4LSJ5J+/Ys59gkJq9JWuBDrlntTzqai2/Y40KtpSHbmMO6sz7x0DO?=
 =?us-ascii?Q?rD8qFRfOd8ignJGoqap/t0ROXFu9gbuRwfPoqOT+paN8FvUgf9LvWFF9xwcQ?=
 =?us-ascii?Q?JYbAvirKUhWSqs4SDXMrdV27LtTbzTkGeJww+wKJCFifxhtIRuOfK4TjRqkU?=
 =?us-ascii?Q?03JM+fdsQV9jXwMayK6TiOzoZ1Gi6lPozynIUHL5LDVVByOOuQoX1fAIuA6V?=
 =?us-ascii?Q?fgVpxudIQhQVtdm5MwoQfhHfrmkT+O6N0Q/TN1a8qiNeV4PQIpKEF/eEJSA5?=
 =?us-ascii?Q?jlP6rMjRm8qjKBTWMbaytO+geCiBzHNMiIK+SCUusm9BReAvooq9O86Z+XKh?=
 =?us-ascii?Q?7A4X2bz0cOb83EIrdERAoMKKT8uKdpMvOyMKB+TvmUEGoQx4w6HwONuOfpGL?=
 =?us-ascii?Q?kg01UWPAuTyUfWiaH+L7AfT3pjeI/CTpP3nxz+bq5oNDnw/738rT+Bk6MOVy?=
 =?us-ascii?Q?U0RFm/EKLwTbIBTBAUlzGsJXIFqRDn8nMiQBl23dYuWoPfjBurTJnfNxR9UF?=
 =?us-ascii?Q?U8V27lFKVvOg166oBcARWw1XOZpP3A9ASZBMw+UoCALWvc1JqJu2tEPIIINL?=
 =?us-ascii?Q?Rt/GO4ceGqjOiCmne8vY9Fahqv0ONBbAyfTbsHjRY3n1QEltyKCSLQYETNby?=
 =?us-ascii?Q?lhH4upznE0+3kqtu8UovwnHhvXqivpLehXhdLDvZ+NmIcPMsdc+57ZWLotng?=
 =?us-ascii?Q?wFbCHMFBlsURTgkY38Utnlra8oc2AGtMwMIw62sJ?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BN9PR11MB5354.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a201ed3a-9c4b-4c99-a5b5-08db68d1ab5d
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Jun 2023 10:09:53.5507 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lyTZbrwdcntk24uoPL/yfgOV9C3nRP3UB7kA97ZVfrNZmES+V24VkW0b3j3CLi8dXM9/QevW0V2gNd6v0t/lJj9WuQpIZyuSqslerdHPfNA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB7011
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686305405; x=1717841405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=eCnM1WEUm9I5d9yZRaFZS7dVUKQyswyszDgN7LDau8M=;
 b=H5T2okjJ8VHEOZhVw2SNzKKKhoZIVZ6fInjUnkczLoBqwFtvuC7xBdS2
 tu8W+BQGbXd27+vIFcNm17B4urRlnxngA7rqOwchgyc61fG3rMDlSQbjD
 ANEOxdIbcPVLRfpDGJCRLIAjVYcOz4LngXUMH9SPU6DjiR2clCPo6PMXf
 xP/anAm/VF722KPc9EPOrUaYT/r1NO/lhE9fumMGyMA1b8QtwW7sHeUt2
 C6DRMLYjNdcrkOz4pAiIi0+Tzu1VVd/7hIEtaGYdP3mDSCpCUa4/jc9gS
 CmJ72qcY6ZIXc+4sLLBpyLB+6fyscOzUjmzrlobd46Dp0SKjTworH+bZx
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H5T2okjJ
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove null checks
 before devm_kfree() calls
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
Cc: Simon Horman <simon.horman@corigine.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>, "Raj, Victor" <victor.raj@intel.com>,
 Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>, "Nguyen,
 Anthony L" <anthony.l.nguyen@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>, "Kitszel,
 Przemyslaw" <przemyslaw.kitszel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Przemek Kitszel
> Sent: Wednesday, May 31, 2023 6:09 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Simon Horman <simon.horman@corigine.com>; netdev@vger.kernel.org; Brandeburg, Jesse <jesse.brandeburg@intel.com>; Raj, Victor <victor.raj@intel.com>; Martyna Szapar-Mudlaw <martyna.szapar-mudlaw@linux.intel.com>; Nguyen, Anthony L <anthony.l.nguyen@intel.com>; Kitszel, Przemyslaw <przemyslaw.kitszel@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: remove null checks before devm_kfree() calls
>
> We all know they are redundant.
>
> v2: sending to proper IWL address
>
> Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
> Reviewed-by: Michal Wilczynski <michal.wilczynski@intel.com>
> Reviewed-by: Simon Horman <simon.horman@corigine.com>
> Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
> ---
>  drivers/net/ethernet/intel/ice/ice_common.c   |  6 +--
>  drivers/net/ethernet/intel/ice/ice_controlq.c |  3 +-
>  drivers/net/ethernet/intel/ice/ice_flow.c     | 23 ++--------
>  drivers/net/ethernet/intel/ice/ice_lib.c      | 42 +++++++------------
>  drivers/net/ethernet/intel/ice/ice_sched.c    | 11 ++---
>  drivers/net/ethernet/intel/ice/ice_switch.c   | 19 +++------
>  6 files changed, 29 insertions(+), 75 deletions(-)
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
