Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id A30777F26EF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 21 Nov 2023 09:06:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 64C29410C6;
	Tue, 21 Nov 2023 08:06:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 64C29410C6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1700553964;
	bh=kR8pRHu4cvAIDxwIoBW+ufuMtwyAbUxfBHRAfBqv1u4=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=i1NluuD/VCPP8gOjLmad/ofxlCgAJDzsHN310pLRfsCeTEkh01V2PA9HbNshTwT+3
	 6Qg72O70OCTnsylMUjjhCcyj0RwS4+WmtqxKsaxBr/zmIRMnkewJx1cX6rKLPmziNG
	 ltZ3+tzJHT+mKIL2EqT6TGOGkm3z36ZkD17ADBFche7VDM0XwENXMQ4p+bFEgIT/R7
	 waKv6bgMQaqIiJyDHp2hcEG9yD08Nr/xQdqx9enuh/Zh99xBd4uDNXrYd2gYjg+Iwz
	 GjW55lCHdcW/wprpOd8FfQNNJmN+w7hqYGG+KpwN8BmOjFug7inn3s5H7/TN+7WZe4
	 VH9FQ73xlrnNA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5yk7VxE5EaQH; Tue, 21 Nov 2023 08:06:03 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1EEB1409E6;
	Tue, 21 Nov 2023 08:06:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 1EEB1409E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 57C3D1BF357
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 08:05:57 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2272460E92
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 08:05:57 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2272460E92
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8YrInQy72_YB for <intel-wired-lan@lists.osuosl.org>;
 Tue, 21 Nov 2023 08:05:55 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 0A6CC60E0A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 21 Nov 2023 08:05:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 0A6CC60E0A
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="4913672"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; 
   d="scan'208";a="4913672"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2023 00:05:26 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10900"; a="1013829059"
X-IronPort-AV: E=Sophos;i="6.04,215,1695711600"; d="scan'208";a="1013829059"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga006.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2023 00:05:25 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 00:05:24 -0800
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34; Tue, 21 Nov 2023 00:05:24 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 21 Nov 2023 00:05:24 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Tue, 21 Nov 2023 00:05:23 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ioBaTYTWw5xaLK6mtuYYafQje1iO6ylEIOJizKCwPeGHb/eVvWWbH7ymY4YJBs96CSe+LjBuz/cmov1F62loVI8zLlFXIIpitcjRa6CaeWVDvGd40mM2eTObyQ52pJivtMfvr7HlhlayiMBtexmSfvjCz+zxIUfM7yMkjehdZnbDaK86pS1qBICdRgohzVZOeGHDsKY83WLJoIbZC2yQRW0Z27Hh+tHgYC1ypAmwi0wKe12WmAGV3PIW4RBK5Lenx3tIVcFQq8pd2neigwIuysTFCuRU0oNB+f77/RUNXis4RTaxz3Dbgr6kXKRPpgszvHLUJjPjjq+HeLfP9Qbf5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=5k3fgM6O1GvECi/PzFkYwizZ3MDvFtOiVo39+TSVl8g=;
 b=dFizfUTKXKcNd+JqPpZCzjYiQW0hnbiAd3cEBf6RhNRNsMpgIeWeaaGQeLook89T8VXt3Az4/qlMpRvIGWAo6wX0Zh4Manu0sGn63aUXoHLvWE767yKiCbSK3V3LBlaGMksCtxC/yNKNzYD133UJjoNxXD+FaDleDVadLglD/lAbIBZhbUIULRMkd7PnLcNPAS0Wp1R++wxpMI9gL1ps31Z3WIMVJI5cBwTiKX3hOpQZW+0qM4jscLxo53Z9uXmyFx41kwTS3pTW/aF+DhXnVQWPrBLLqWWlZzwct6cMCn7llvpBdBAOEPHd1E+khATpzFAI/Lx8HAsbVKL44j8Jvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by CO1PR11MB4786.namprd11.prod.outlook.com (2603:10b6:303:94::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7002.28; Tue, 21 Nov
 2023 08:05:21 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::b9ce:466:8397:a2c2%5]) with mapi id 15.20.7002.028; Tue, 21 Nov 2023
 08:05:21 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next] ice: add CGU info to devlink
 info callback
Thread-Index: AQHaGIi6IsoqJD0IiEGgLVDaXAVBY7CEcVzw
Date: Tue, 21 Nov 2023 08:05:20 +0000
Message-ID: <BL0PR11MB312206966AC5E7255AC32236BDBBA@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231116122730.1213286-1-arkadiusz.kubalewski@intel.com>
In-Reply-To: <20231116122730.1213286-1-arkadiusz.kubalewski@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|CO1PR11MB4786:EE_
x-ms-office365-filtering-correlation-id: dd646c5d-5e9e-4b44-cd9e-08dbea689b6d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: FraIy7SWe/1v+rDO1VqTrxKyBakBrPUgyP5i81Shzul4QR/jmEg0WHzzPVbdfYLLe38lCJnaxJvzLgzDp7bTPruoZ+LYoJqSeuexVPNylRMR3qYUlkiVuRqNCv9w6zSBTShw5mAjT511anTfUCcdeiANPB4z+d6RuTj5EWTXQtm/fyhqO1gZi05Km9k9wWl3ug4qe20veh5Utrum1BlietBq5TPjOAbUEdt7u4bQecjxFxMk6jAMm2FmX43tPwNUPKTUitCa+f6rUAbvKXKugVREW6qrwIiKaUS+1yksgn7DDJqFNoAn9svWZqZS+bzO8IFYHTaN+myc/b4uLYovxlNCdyhzcLa9eobULlN4v6l4GeLXE+rdVKVn2yEhwHkhSmO1iuvmJCBVdVLL1awXFVSVPfwU8COtuki9glypQDJxtOb7UkW5JRyEgz+k1y1ATWIeHnTgME/TcMFeuaWn5AzCVEvQ8irxooGcc9p5ZThVOkBDGN9iXLs6SHnHml9/lKDGpJzTCl76G+W0isLQRPCdl3SKLMiMVrHUlspIgGtL6CbAgAo9t+oo82W2H309rkchsIgNZgwKf6RUD8jeknytXwPyoPNuMIAmEMDGqx8Jnl1j9CjEt/LK5SXuUVEq
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(376002)(366004)(346002)(396003)(136003)(230922051799003)(1800799012)(64100799003)(451199024)(186009)(55016003)(107886003)(83380400001)(71200400001)(7696005)(6506007)(53546011)(9686003)(26005)(82960400001)(478600001)(38100700002)(122000001)(76116006)(110136005)(66946007)(2906002)(8936002)(8676002)(4326008)(54906003)(66556008)(66476007)(316002)(64756008)(66446008)(86362001)(5660300002)(33656002)(38070700009)(41300700001)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?R1dBdmK7AsIlXv5EmdlnoqM0/U9dTMPnc/35wHnvcKcqz9vVp2i+39pnojtz?=
 =?us-ascii?Q?vWBpk3/oubTqdj15JDIQ3/ZgdcBu0WgZL/3ZpzCHOcJb/JJGcTsh1sMZJt7N?=
 =?us-ascii?Q?nfoomNxWWu6+9oQNwrIGQaFsx3Ljc2+qZU1E10lNduA4R76dXJwEiuksD38r?=
 =?us-ascii?Q?fFSvGsUSWRZIrku9hn9kEuz9CsIPMR8d/FeFZH8i2QrzBbLpnBEhOJmgPtzo?=
 =?us-ascii?Q?jJKdowRIdHMuMPtjCkwf9PoCdB9NWI4Dbtt0IP/AjRrS7CRvbPNu22hpW/Rt?=
 =?us-ascii?Q?GxBJKal68PaCkrZouTUE+vXgReqPvx8pv9XzoAzA5Wuq2ofPsocK94/62ggi?=
 =?us-ascii?Q?tew3rJwC3mrfMo0yQ1M+dprjI74XwI1/1exgZ6mWf7vhBQieVbNtgAEKPqa4?=
 =?us-ascii?Q?MA1Q/zQirnkYVWO/uAdFpG/QSzuFnDinEBU8gdsA/SSUVrCN9bCgFef/Wsb7?=
 =?us-ascii?Q?DWYMRmxPJKI6rCH4kh0CCv9FgilVaXJExzbisBmQ9TSEWPt0LyAJFtXObFn4?=
 =?us-ascii?Q?8IP+rh7AYPOveDazIRZo5HzzEAAq+FX+QMd896+/RIAHQ8z118e545acHvrH?=
 =?us-ascii?Q?CkylpQysfiNWNk6tCuUDv/hgKqKM0it3by1lOqh7N13k0TgSHdvu2wfpmXCD?=
 =?us-ascii?Q?AlFRXfBpLhotsWjN1HXOALGeKAVHbcn4d0kDGCB+RtMFj4s7xuifm4wWqAzd?=
 =?us-ascii?Q?E7Y/tl8lDWc3rK7bc119PbFL9992xXYB5ahbCbEk+T1RyFfDXj10ld6BN0lU?=
 =?us-ascii?Q?BtfqXZBpGQc+x41RjYX+AQJqxaf5+EG6T3QEKdAq4OxIilRcuC5LeyYIwU3A?=
 =?us-ascii?Q?Kayd3gXCeAVZsgBI6qe4SjWUhNR+BqZM5UYI824AdtH5TAiTwZbFIpcSjKLS?=
 =?us-ascii?Q?sQaJnryjs2jg8qRl4Y1gy0tsnTgedIAOnYsEbhweC+I16tmyOkOUHNOpaj10?=
 =?us-ascii?Q?2h2a2tFFrSsMg0G/eHJlSXQJkFA8ee2s7OrbMgLIxe2QytO1hp2PZEb8gINy?=
 =?us-ascii?Q?gGtm6f+90bl3dJticyWwO5zN4zgYt9HbNMP5qUq61eVhf84B2NVCI6CmicT8?=
 =?us-ascii?Q?pZIXA9gZywjlFBYDauZahQ+gNsOvZ4nYA3GFFHfiYcb7yYu5KvKMC6pv0RWf?=
 =?us-ascii?Q?ucriF6HYDNGgbr+CwGJQPNQ0dGvJoNEvjp4/ox9raF98imvKdKIvA+vShwrx?=
 =?us-ascii?Q?vT7yDXai7yXR4DgE4QUQtXu9kdRU9CeO0qyL8YmzHg/j94LLzJnM/EAEmkl3?=
 =?us-ascii?Q?b1HFpoLe5IkNtCpYKF7r3kQ7gHuBnjY87NKFWGD2jjw2la3r6/Aui6BzSRll?=
 =?us-ascii?Q?8BGtNKDckBJQLOTHuG6oXjVvnHUFXUHnO3hWAqVBK3Wn2bWZk99X9R5pT3UI?=
 =?us-ascii?Q?kOuNtT3Kz0vzZrmDeZfP3CouS7Rbhfe7SB/nzeS0l4OtmKBaBjnfU88RiHBT?=
 =?us-ascii?Q?x/dOdAovFSlz/wmfb99Gc8mfnwtd/duKCS1yjKcVzdNKXIq/1w8O/WPR8Fb+?=
 =?us-ascii?Q?+olnvxCM6+12cvC8fLazNpvwOdcyhmRSMdpq3tBhD0iL5u5mjNsnnHYx+Hba?=
 =?us-ascii?Q?V/ai/UB4irixisf9K5s8Ee9wHVU7YbzeDc4SPwgOfBJz9XwAIxwvJHl/vI5F?=
 =?us-ascii?Q?Qw=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dd646c5d-5e9e-4b44-cd9e-08dbea689b6d
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Nov 2023 08:05:20.7929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: fzNWXuYSzijAPndItQ+HmnGOid+cycBfZbBvq1sYxikm4FsBsG3V83fSv+gHFsbTyBQd+isENDs/WCnX7xsemDgeLPgmc5VW4vXly52FrDcVTrB90EPM4/VuGDRJQsh9
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CO1PR11MB4786
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700553955; x=1732089955;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DBMF+xmTNDxj7n4gY91JLxPNjaKs7nklmIIvvIs8dMw=;
 b=I/sIDnkjk6SLz6S44Rp4FIWs2Igk8PYo0o3LOG83HitoExuFVLrcxPl+
 Q7HKPfUOkymyb/5jsWgceQqgE0u1IfGUDOAMafkZHKH2cYuc86XhB1lfq
 tnqlVqXoDsBM5CcYi52jDyKyGril8DzTMc7u9KwVfpwpZQLNhQi/Gg8fo
 lNqM5F/rTq/+KGEnlu34pTtl2yvP7jA+nndqNvo4qSMNxZKM8JuJNX6tY
 z/RnkxOO9ixI/eLPQbm5GdHuw/xhF9p4nFP+s216ueUUusPh+Fw91ecEa
 oKMEz55nQw0nrf7wO+m+cvlEUgyKa1i3BkDR3HCak/68eeWunqWpdbF4j
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=I/sIDnkj
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next] ice: add CGU info to devlink
 info callback
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
Cc: "Kubalewski, Arkadiusz" <arkadiusz.kubalewski@intel.com>, "Zaremba,
 Larysa" <larysa.zaremba@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Arkadiusz Kubalewski
> Sent: Thursday, November 16, 2023 5:58 PM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Zaremba, Larysa <larysa.zaremba@intel.com>; Kubalewski, Arkadiusz <arkadiusz.kubalewski@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next] ice: add CGU info to devlink info callback
>
> If Clock Generation Unit is present on NIC board user shall know its
> details.
> Provide the devlink info callback with a new:
> - fixed type object (cgu.id) indicating hardware variant of onboard CGU,
> - running type object (fw.cgu) consisting of CGU id, config and firmware
> versions.
> These information shall be known for debugging purposes.
>
> Test (on NIC board with CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu
>         cgu.id 36
>         fw.cgu 8032.16973825.6021
>
> Test (on NIC board without CGU)
> $ devlink dev info <bus_name>/<dev_name> | grep cgu -c
> 0
>
> Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
> Signed-off-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
> ---
>  Documentation/networking/devlink/ice.rst     |  9 +++++++++
>  drivers/net/ethernet/intel/ice/ice_devlink.c | 20 ++++++++++++++++++++
>  2 files changed, 29 insertions(+)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
