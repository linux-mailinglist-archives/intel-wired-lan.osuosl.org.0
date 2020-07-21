Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 97D3D228C92
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 01:15:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 3816A203FB;
	Tue, 21 Jul 2020 23:15:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FzpwPfd8aLMz; Tue, 21 Jul 2020 23:15:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id D3AD120419;
	Tue, 21 Jul 2020 23:15:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 31F4B1BF377
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:15:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 2CF618872E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:15:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9TivlHO+1mel for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Jul 2020 23:15:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id EA9DA8872A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Jul 2020 23:15:32 +0000 (UTC)
IronPort-SDR: /WuXnOcGyKahUKoqbwp70uA9J6gTOuI5ywuHmqDA2zCdjoKBIOIjnaPNJg7CfrxKB9phVShm3O
 d2L6gqTAiEpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="150222959"
X-IronPort-AV: E=Sophos;i="5.75,380,1589266800"; d="scan'208";a="150222959"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jul 2020 16:15:32 -0700
IronPort-SDR: YwHNIeOBgYlw/wG9t9NAxy9uvQFRkElklLltADAKOhn2mSRpkcA37DCS4X5OQ4+CQWQ98n/ARg
 d4qj2jTZEbWg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,380,1589266800"; d="scan'208";a="318491952"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
 by orsmga008.jf.intel.com with ESMTP; 21 Jul 2020 16:15:31 -0700
Received: from orsmsx121.amr.corp.intel.com (10.22.225.226) by
 ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jul 2020 16:15:31 -0700
Received: from ORSEDG002.ED.cps.intel.com (10.7.248.5) by
 ORSMSX121.amr.corp.intel.com (10.22.225.226) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jul 2020 16:15:31 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.175)
 by edgegateway.intel.com (134.134.137.101) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Jul 2020 16:15:31 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=i3XxXcXrJnv2Nb0J2Dpqo+Vn11oS5sE2VxMkfZZ74AGltVDZYm3A1cey2DCJ310NP7Ny+C2YJxxyNv1fzcMhMvpQB6h1hg/3pvhEYIlmSgM2O8ion7+Hb2ptUID0d9efiO5YqW8ukLZYMOEhaCdk8R02cs877Lz0Je5Dqn34nbl0ICex2SJQLnB4nMDLWnb4OFK1niAu5ky5s7nj5MGL9wCUK+oVE666A0NFLq88GWiLVNLrOnefENH9Vq55dhvsznfEwhgxsbdJHHg+u0LBrCJF1hUtuhWiUIfZLnEfmXQRpIyi+niHaKFgUbF4D0FUnYkgP9k+wcKmrqdN2i/c/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nscw/1sj7KxtDUIXK0j0eqPkb+fWbIEUL2pmIYvVXh8=;
 b=Az4mTpdA+6hsQpiz4ErvMRAAuJF2PAr/mI8wzW5vmJ3hpSQWKBJtvPlpHZPJ5dm7xRI6uBISxQI1J/Cb+iBw7B7tS5GNyT9rdAKENytgBNq+XvXQ+JvVccnUOUKr4Ov8ySz1pgveUYYE9E9/zlsoKOXlkjkxMsVvYBvvGzZhGDA4M7bg01tutbAMe/DQ+NMWz65PUQJQ/WSoVf58N1KrG0UDoXg+NJkBFp6E/IxDNvv2LxeTNtS4m0P05aiz4PstsiqSOAKKL3ct+xrubf3sWa3vIp1yUUEa9dtX8qMDuTFpdmvLAShWc6Mq8vZSIp+4t4RRTpl2hDOqlsHwYtqnrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nscw/1sj7KxtDUIXK0j0eqPkb+fWbIEUL2pmIYvVXh8=;
 b=Q3uANDPVoylP7Rkf8RY+jcz0tnt4AxbtBdfTAiM9eKA/anUin/VZ/KnPEWAqIWzNtk5xYptP7tDzuszZJ2VmuVmEPwK1WGrh+JuNbD/rJZN0Ad9yKElvWAMQYW81LeL0iD6GhYSVBrhQucPNmLytJsZU1Puj9tF4ngVfFYiAsso=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3244.namprd11.prod.outlook.com (2603:10b6:5:8::22) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.25; Tue, 21 Jul 2020 23:15:29 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::65c2:9ac9:2c52:82bd%6]) with mapi id 15.20.3195.026; Tue, 21 Jul 2020
 23:15:28 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up the _mac_info
 structure
Thread-Index: AQHWVE6KmLQKbvIIfkqmZhW6ZlmpS6kSwOaA
Date: Tue, 21 Jul 2020 23:15:28 +0000
Message-ID: <DM6PR11MB28904549AAE4DB772E510C68BC780@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200707110503.32407-1-sasha.neftin@intel.com>
In-Reply-To: <20200707110503.32407-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.5.1.3
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-originating-ip: [97.120.173.209]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 96240db3-e7fb-41f4-46c1-08d82dcbf54a
x-ms-traffictypediagnostic: DM6PR11MB3244:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3244A0AC0F16E18150EF1E83BC780@DM6PR11MB3244.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1824;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: TtOPmn+gEB6bxt47r3dllgm9tjZq13iWHF1DcjucKYp4T43fLsTnh635/HVNxlwyMzgRf8NsQxHwAyFrnKPn8hvMBhRjadfMD8bBcwoEPb8eUMolP1wrGlB+FCFE0X0WOd8v/h5lwr9LwBr+KsS83vyn4yL22RMm2QegJLNslUYB+dNRKeoTmCgenvDLiXpAfboblnKD0ajsQIY63KrfLK9mLb83lr3biBo7geoQN0jhHml2Pv569ltSpdkwygH4XJB0RswflKmd9M731kGiZg7uxqlI2t2WcQAfC1llO1vnW5C03PRF3EKgy9Bpk6JF
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(136003)(346002)(376002)(39860400002)(396003)(366004)(86362001)(4744005)(52536014)(8936002)(2906002)(6506007)(186003)(7696005)(5660300002)(53546011)(478600001)(8676002)(26005)(83380400001)(55016002)(316002)(110136005)(76116006)(71200400001)(9686003)(66476007)(33656002)(66446008)(64756008)(66556008)(66946007);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: zAMU8lyYxrwxaoRu8R4VVU4ZcNyhrZkWlHMFQma/Y61EySDe3dc7okk2Wr2UMLoYbbxd+OBQNSnsaCBHcAWMe3a0LXHp1hiGFL4I+GQrnWHbLmHWiu181e1WbwD2GywIOCygKK5KyszkKuyYXWwvSWB3X7CLlOWWukFGf+3m98sX8DKJGgbVxZtHOtmygqjqnfcYyqDnPqqv32tzUkxu+gNCo+rU52CzZgHphRPgcTl7DoZCxK8ikCn/hNiw8iuIQmsn0qS2E4Ssko/L2xsR3pkCAkarH5xwdPt2F+ShJ8jt0ZvB44F0anV/dFBNEj/7h0mXdyl4UHDDGGM3J4s9a9rmyP7R7LMdb0tpEkdnvNNqoIPDVCHXEh/7TsDGiPbj86jqtrMxnLcbgJkQvnXaltiG/vxx4z7EXDAgCVKUb9XJz7EJE8el8GLCRZFoZT34wJAPY0I78rxtN7dRDrjh2Lt7C0DlnZSqXSZvL8ZmbQT7RNeTbZOFJbjEgL4uB5PR
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB2890.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 96240db3-e7fb-41f4-46c1-08d82dcbf54a
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Jul 2020 23:15:28.8712 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eH8EWMT0VBZM1qF+M5eJVqoiqfzpbRyd1xn0uG03EomqhENBCVEOVhj+A2NOzOgTEG04dg9rS2bPWlSBXKiOmw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3244
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up the _mac_info
 structure
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
> Sent: Tuesday, July 7, 2020 4:05 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up the _mac_info structure
> 
> collision_delta, tx_packet_delta, txcw, adaptive_ifs and
> fwsm fields not in use.
> This patch come to clean up the driver code.
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_hw.h | 5 -----
>  1 file changed, 5 deletions(-)
> 
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
