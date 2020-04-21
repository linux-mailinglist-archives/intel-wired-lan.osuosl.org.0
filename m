Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id D56061B2F11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Apr 2020 20:26:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 8345187DB0;
	Tue, 21 Apr 2020 18:26:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UI1tIZjYFFrX; Tue, 21 Apr 2020 18:26:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 01F7C87E0B;
	Tue, 21 Apr 2020 18:26:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C97C1BF3B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:26:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7820084A7E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:26:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tD3u8EiLIrJY for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Apr 2020 18:26:28 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1908084A43
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Apr 2020 18:26:28 +0000 (UTC)
IronPort-SDR: mrN8rRZAeZylkn1xQHVHiclL4vhMX32uBr6rZ8A0fmnF4hJFY7EkGt61gl215rZaTfFOMr1s8f
 Ql94+PyMNDEg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2020 11:26:27 -0700
IronPort-SDR: xqVzRG/rXsVP+iFcF+uPRd4cKXdozWjS3vvZJ//l4adg8XCj+LtGG6TGROa/j4XuMODVGLQZWe
 i9wVsqiOHYYQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,411,1580803200"; d="scan'208";a="279739392"
Received: from fmsmsx105.amr.corp.intel.com ([10.18.124.203])
 by fmsmga004.fm.intel.com with ESMTP; 21 Apr 2020 11:26:26 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 FMSMSX105.amr.corp.intel.com (10.18.124.203) with Microsoft SMTP Server (TLS)
 id 14.3.439.0; Tue, 21 Apr 2020 11:26:27 -0700
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 21 Apr 2020 11:26:27 -0700
Received: from FMSEDG002.ED.cps.intel.com (10.1.192.134) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 21 Apr 2020 11:26:27 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.171)
 by edgegateway.intel.com (192.55.55.69) with Microsoft SMTP Server (TLS) id
 14.3.439.0; Tue, 21 Apr 2020 11:26:26 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Oa5Kd+MkYgWkGvo/8hS+9ERQlsGuxs6Yanc7zDds1O06+iFtAXQ0FJB0UdbupZ2qFZqatRdHyIgAQt78vLGqk+Krijm/X4zKHgHB45H/w/zn19VCkyydsa/cN/7DXPPv6EgDOEdSLQFwxjUnRvG/d3yDdb2L6uuitIyJcHmqsWd/LXqn6tSbt+/AmTu5YOLYfZe/T8n2NU9LPYujhZYAzLtqnyVTF2LOS6Mncz3nVpjUTX8bMxl0jG3OqkaI724fN03i/++MQcWkv55fhmDKeDeYanMFe6hftVhw1dlHH1I2U/io9r3d85hWWHfesoTg5IRKcMrTHDuUkU01Qzab1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fzHuj9RmB0YXUr0y8+iHvcO4NGCRnWBaatuxhdpuSCk=;
 b=nJzaKds5CeEe44NCFNXynomJRam0puLUWTP1bMAgEPnOkGpz2n6Cl3dLlPOLPraKDiEDq74yZjUiQDDxlXIpCniA/HKt0HdoHIhER8LTWztmCLSycSiXv1EMcpXSIZ9Y/0J6W2WSnCXByduMiIH0uKYL/P+Wxj+AN780j7Yzo04CGAZtmrZ1i/12fKzSFkJtVfkANTGDjotNR7h4MwR1IJC7/CG/Xvn8mb+CeHRH+pI/wLWUXuU0SIIk+pmz6yStwFHh/iD8cOT/uwI47X3okD+ckWXtHG3GVBtytF6JRiFUWQ1PQXpZ3NFWqKAXP4srhy3vdvhT7qzTQVrQjUDgXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=fzHuj9RmB0YXUr0y8+iHvcO4NGCRnWBaatuxhdpuSCk=;
 b=J4rO3MiwwEjBcaVUcyyNBQodacoM8R1tKU0IJgtEubpMZ6o/8MQHsPKI8Kxt3PALFXFWIKh3TgQASU+oZPcjVm4gMdHtX7GuPqiHNmzxUhIghsf9PZrjw6A2NfbgBVIpaVBBZlR92g+nrdNy6T2uXk6DIj2m1dyF6HP4Bqa4adU=
Received: from DM6PR11MB2890.namprd11.prod.outlook.com (2603:10b6:5:63::20) by
 DM6PR11MB3882.namprd11.prod.outlook.com (2603:10b6:5:4::24) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2921.25; Tue, 21 Apr 2020 18:26:20 +0000
Received: from DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875]) by DM6PR11MB2890.namprd11.prod.outlook.com
 ([fe80::40b:5b49:b17d:d875%7]) with mapi id 15.20.2921.030; Tue, 21 Apr 2020
 18:26:20 +0000
From: "Brown, Aaron F" <aaron.f.brown@intel.com>
To: "Neftin, Sasha" <sasha.neftin@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up obsolete NVM
 defines
Thread-Index: AQHWCBof4LTGSCCk9k2WHD5oPBwgeqiEBGZg
Date: Tue, 21 Apr 2020 18:26:20 +0000
Message-ID: <DM6PR11MB289096437A6606295C1A2080BCD50@DM6PR11MB2890.namprd11.prod.outlook.com>
References: <20200401113844.17969-1-sasha.neftin@intel.com>
In-Reply-To: <20200401113844.17969-1-sasha.neftin@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.2.0.6
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=aaron.f.brown@intel.com; 
x-originating-ip: [192.55.52.193]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2a481bf-c8ef-4468-56ca-08d7e6217cf6
x-ms-traffictypediagnostic: DM6PR11MB3882:
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM6PR11MB3882BA536C71C06041C379C5BCD50@DM6PR11MB3882.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1107;
x-forefront-prvs: 038002787A
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB2890.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(10019020)(396003)(346002)(376002)(366004)(136003)(39860400002)(6506007)(8676002)(66476007)(8936002)(66446008)(66946007)(53546011)(81156014)(64756008)(66556008)(76116006)(71200400001)(33656002)(55016002)(4744005)(26005)(186003)(9686003)(7696005)(2906002)(316002)(478600001)(52536014)(86362001)(110136005)(5660300002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pZOpyCgSEHF77l9Y7pJFIoi7Hc6Gownkx+uoTgII5yyefwEDtK+T/Qylo1KsdKrj3o77B+RaBmmq43cYIJpm2wcU7DTrlB3AWg7jGt//msUqHF+9iBWk9oUauL87SbKIBvVKa/mbgGmFF+xXdabNDmdkHCZ8ZMM4nUHMPvjsjLpDA5yRwA8iIC2/ZS+EKzHt9PDWODI7boMzPlql4CM4UDVnhhe+gueTejfylwoTOBCGl3LR11IBYYrG7AAq6/C6ElEUCVY+hTJXlPM2enTMUz2C6crnreXrpFGjl04OLY2aX78jJ0It8xUdhrMTndM09iwAaancwd3PvT6OzgIKQltSzFcc65XHo1nZgReS20/JHlLoWIXtmrjiYOx1pgsoLkJVGueHUnGayRnmhwvKusZtG25LL9OogqRsN4/Z3cTp60vuAbZ3TC4UzRB7lGuR
x-ms-exchange-antispam-messagedata: fEglJCem6yZJkSkN1rBVjcVOuRQ4GtYbdkpnnhRo74jDZ4yso8x5uIyuY8FRzC3r8lMRcSg7buHi1OcfhFWXWNl0Uo5v6KPNA90SXZuZvyDTYF456jmhYXfymI5tMxGOeRn9gJcRzdeuWIEpGir6/A==
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b2a481bf-c8ef-4468-56ca-08d7e6217cf6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Apr 2020 18:26:20.0273 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: dX9wAV+C2J7DHt7jVH3g2s+5N33Ok2jTe3pAqb3PsnTXNOScHeFe3B9teKQDdQl+Ht6cBM7DaIlyGUPgGwFcVQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM6PR11MB3882
X-OriginatorOrg: intel.com
Subject: Re: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up obsolete NVM
 defines
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

> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Sasha
> Neftin
> Sent: Wednesday, April 1, 2020 4:39 AM
> To: intel-wired-lan@lists.osuosl.org
> Subject: [Intel-wired-lan] [PATCH v1 1/1] igc: Clean up obsolete NVM defines
> 
> Packet buffer allocation, reserved word and pointer guard
> not applicable for i225 parts.
> This patch comes to clean up these obsolete defines
> 
> Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
> ---
>  drivers/net/ethernet/intel/igc/igc_defines.h | 5 -----
>  1 file changed, 5 deletions(-)
Tested-by: Aaron Brown <aaron.f.brown@intel.com>
_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
