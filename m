Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C278049F2
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Dec 2023 07:22:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0E48A821B3;
	Tue,  5 Dec 2023 06:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0E48A821B3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1701757367;
	bh=Fc4pPMnpVHdjmmMeau3Zh0ZH/fzWFOB9naKOW+z1d7M=;
	h=From:To:Date:References:In-Reply-To:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WE1BP8mMEqIRyJGn8AiXWJ0JeXdKQTgL0LGHN++TdCYBPT4htf9xWx6mvI/2+W1NK
	 VD+0ZscRFcuFXLcAYx+okWnOxzLLW8bmRy2stHAr98afIMofNu0nFGL8C8lRFHCB+z
	 NbxEY8/VXp+QWcX5m6N3aJTRWyvL/xFjgAuKeLN0NtFLceLvArn1m5vbx5LZbFTmoA
	 Jrb1hMveuIUwjQyo6+tys1VW1xeaFWiMQSTqi/kS6yemnr6jpBvWt5QNMIsSavr1Js
	 TeFf/nVBhh7arRu6prXtkaSYGOeEKMNFw+3NaGofhPlafuGwTYwqZS7HXhsOzFxwze
	 8lcDRPQMq+scg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Src8x2hpc4IZ; Tue,  5 Dec 2023 06:22:46 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id B0CA281E6B;
	Tue,  5 Dec 2023 06:22:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B0CA281E6B
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1AA2F1BF2C3
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E42AD417E8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:22:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E42AD417E8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ggC48Baad51J for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Dec 2023 06:22:39 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Tue, 05 Dec 2023 06:22:38 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org EE957417E0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id EE957417E0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Dec 2023 06:22:38 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="691670"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; 
   d="scan'208";a="691670"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2023 22:15:30 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10914"; a="861643559"
X-IronPort-AV: E=Sophos;i="6.04,251,1695711600"; d="scan'208";a="861643559"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2023 22:15:30 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Dec 2023 22:15:30 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Dec 2023 22:15:30 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.101)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.34; Mon, 4 Dec 2023 22:15:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hyBf2sumy0G8pxkPyAIDX8z4bEzU9l13hsH1BkJZPmr1SNEQxo+50Oz3StiTaRWS1+smjlJ+41kbPtbOfnRfRxlajg7zdGAU98z5VYktnn0LsyDihcMR+R9dcNNDExOvWKxkzCpiPsHt6YOvP9YloM25HYH/AN628IJxWKrK5N+0fXFfpZaGXMLHBnZEFxjA/GDB8wPkKTOooVBBg9vfUQWNwWD8+TQEB1a0Ik3aUpqfoWi3d49Y2lm2mNPf24xrN/SSWOZzLQcOPqL2Y2s4Ujbb06+evIRBCJInPCS4wze9CJC5YBE8wmiauVwyBSyDlwNj2aH6hXzkSUq23ZtT1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=so94VD/J/hfWvO1C7YwlZmYSWY5Ejn0XUThw6PPbp9w=;
 b=hwAnWLOl1fCO+/2/Ycy8168x61CEq07wjwLLXVy1yEHP016dcdK7tZdlbZfmRJ0wm1dgAhOIvTJS+kRnaEkBQAstr7wrbxuuN4heKp/prbrN2vTsPabvDsKRXd6qvKsjaTuJheN2kljIaO1Os+1PiPmiC8WMw91vGj/I1mvK6eHUJsq6t7OdWLjFAzLxYtYpdxqF3G/Tp7cAvb+Dm9Wj2bvVwGcqXPtXGjXZXg9IUnuujPw5BPrimKU+VXe9/V35WQW+CAfLz+MsEamndpyaotacI6qmN4mcCN54IS+kATRUpnXye1bhH989cjEMBPsagHjGx5s0UUxZpTw/FlnIrg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL0PR11MB3122.namprd11.prod.outlook.com (2603:10b6:208:75::32)
 by SN7PR11MB8112.namprd11.prod.outlook.com (2603:10b6:806:2ea::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7046.33; Tue, 5 Dec
 2023 06:15:27 +0000
Received: from BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f]) by BL0PR11MB3122.namprd11.prod.outlook.com
 ([fe80::954:6050:f988:740f%4]) with mapi id 15.20.7046.033; Tue, 5 Dec 2023
 06:15:27 +0000
From: "Pucha, HimasekharX Reddy" <himasekharx.reddy.pucha@intel.com>
To: "Brandeburg, Jesse" <jesse.brandeburg@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [Intel-wired-lan] [PATCH iwl-next v1 03/13] intel: legacy: field
 prep conversion
Thread-Index: AQHaHMCzeGwEQd4MAUuWzHdpxurTj7CaSq9w
Date: Tue, 5 Dec 2023 06:15:26 +0000
Message-ID: <BL0PR11MB312213B325230CEA3749B9A6BD85A@BL0PR11MB3122.namprd11.prod.outlook.com>
References: <20231121211921.19834-1-jesse.brandeburg@intel.com>
 <20231121211921.19834-4-jesse.brandeburg@intel.com>
In-Reply-To: <20231121211921.19834-4-jesse.brandeburg@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL0PR11MB3122:EE_|SN7PR11MB8112:EE_
x-ms-office365-filtering-correlation-id: bcc7d6f0-28d4-4709-4590-08dbf55992b9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: fKpglooowKV0fgwNu+rR+YN9qeVcIRCnILxhQbYxRfwJVIna7nrorpoY1+jUJJ+NjtmlQTY/pSKyK2LpZ1ccU/mDUzMPmkv2ohUDyCB3I1HtPNM7hKVdq03Fy1Qn6tlHnTR46MtjqJS3h/gT9Tre2UuLgChMG9fUgLprlVVXOAT5EHxBBtRDTZuDwmJlMkxtRE+jWbjXGAhoHecRagaBXc84gsG3Tk54b8WmIbM7JD92GptUXgTE8hR2vKKY5Kmo5QOVMVGGK42IflT+8vR59/KPDHisFdFHUCDD7tTgiGO4z4c4z9lOVrqsCoepCxFnhOZ5Iv3iebj0sSpiyOnbvlggFSEPdtTI7mrAYWDdFHjK4SYyk1VAwtAJtZsuJO83St4S0sWiO2EM7D2QQpdueB1zYT8h9JgB83fTxcfwDTA+Brpazkr4FSBf8YQSrPtfLH5PMUqg9HWalaJjCSKeBPhmWS9lXu/cfjVI+Ks7hvr3dVQV/ppB+LKpX5JYBkUiDNWi5JuRyCxk55vg4sQzGyePYZeWnnrsaV52F399lWRfFjrstJdrSz2waWME/76YwPaVmEXG7nQPLivte4hZMjV7pfKx/Sk+oiVun0rqE9ztBvjLdYkg4ThPV8SSOyuf
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL0PR11MB3122.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(39860400002)(346002)(136003)(396003)(376002)(366004)(230922051799003)(186009)(64100799003)(1800799012)(451199024)(38100700002)(55016003)(33656002)(38070700009)(122000001)(2906002)(5660300002)(83380400001)(71200400001)(53546011)(82960400001)(26005)(6506007)(7696005)(9686003)(76116006)(478600001)(110136005)(41300700001)(66946007)(66476007)(54906003)(66446008)(66556008)(8936002)(52536014)(316002)(86362001)(64756008)(4326008)(8676002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?axcDfTcuBBPq1TLgpOWe+kxhHO4ciMWVwlZwGMWILb32T1wNlIMTP5rQoDEz?=
 =?us-ascii?Q?rxFudP1XHMrrW1UQVkm7bA/W/iCxbhfwLufOzqbb+au357iD7aXAVoRIxbId?=
 =?us-ascii?Q?a97wiX6rpTW3v81dsWouTg5QILQrMT+B6T1yS8omFFTqvz2wIqwg+S17T7fH?=
 =?us-ascii?Q?p6EpTxADtFsWgpkoE/A4C/MYTmPt9jEi7TXZnphxX4EdhjJcI502v4EEHRoT?=
 =?us-ascii?Q?CgdkdF8XPvNylTzIV9IqCV7OT5JYWJl8xzagOnyxuEt4cGvYjilyhqNTnhHr?=
 =?us-ascii?Q?SiN2ucRYMP2LMaNx3KNnha2yjuqJJBXQlkTRlGcfoVEuJ4zFea+utIiAqcC7?=
 =?us-ascii?Q?EXpwJFYbAAN/r4HwWz8pvjZ5orK6YM0uX1IqilDbjPhrozzMLQ9OEath4P/R?=
 =?us-ascii?Q?U3BMHvY3aXRZticJR8XUcHIzBYuyoZdWOtqugUqMbaNx4gmVG+o90bf7sWGx?=
 =?us-ascii?Q?1A5HQ+jY0ucdVOSw8JkS7Oe7OA4wyCr47cdC1h2ecm1gkN7PH0JVRv6tko6q?=
 =?us-ascii?Q?cGoxgcJyDEmgZrClwj/W5t5tbQEJwHZ0hYlrFjpaJfDC3wz6P4X78XSBujvZ?=
 =?us-ascii?Q?bNP6KryEa6UD3LamMKeh6ojKdo049R4ZgTWdgxWhj1jvc+fV1p051Mob8qbN?=
 =?us-ascii?Q?xn/xjIyAAXch25EFvdgl+RNwJqpiJs/Nya+s0jQc9V+k8hJTU4A94Le1yZfp?=
 =?us-ascii?Q?vvhnZ76FQTQpcqITFLYZhxvVclh6EcNd1NmqxS5vbTfoiCb54teF7O7SSv1M?=
 =?us-ascii?Q?PHQnkTMAk4/1J2O4AAVSDZBQDXoKmdgpB2GRz9I+1i74EMSjwpPqjZxFLzpl?=
 =?us-ascii?Q?HwhI7BUN4OSC9Gdepyh8LfurdcMt3koyqqL3mkr6XYFxI+jeEwjaskhrCblJ?=
 =?us-ascii?Q?F7sXYEmeBGtzJw8w8S50mR6SnPHSaf3WXK4RTdbU+kZ0zxgI062T27jtfwLY?=
 =?us-ascii?Q?ued3M/vffnhrqrJoXELb14LJ97IDSecKH0zSBCJVhyc3JoM+q5napHExJowt?=
 =?us-ascii?Q?L3hqGJfxAIWeN2kf9XICXhGdLfH7LJzwsM/2P5kAt9188CXvHrPx7aWOK0q9?=
 =?us-ascii?Q?P8z/i+sV4TnPVJrjAU3Mkl9Bs8wi6yBil+76T/fpdrirjJI7qw2CfP41ekB3?=
 =?us-ascii?Q?/UuvQCFYno4uvZrSkS0WwsU/Bd0mbQboCQPV6XlawbyGxuBxeVPzmG6e8M53?=
 =?us-ascii?Q?Bij5AJfCtgYa6G/3IU7sy5fXjZdXUn16Z5zVm/yhWb7CO/qZTUzoDzVci8jj?=
 =?us-ascii?Q?CVSIAnhwIGW7hv5k8prkuomPB01BDsASCHD5fB68wQfPO6K2c1TJeVMYOqyk?=
 =?us-ascii?Q?OiXIy74q9KMcRMcVz7BeO6kNS6L79isKqKK0032IuMropNmyfu8vXmdwfqMd?=
 =?us-ascii?Q?oQ5tpco9/DltQqvbrZN4Fz3+F6IxUGsbS1j9bPRPUfmLtMp8U9ZBVIZKPHlp?=
 =?us-ascii?Q?5w4lE2SZqe688gSCyDP+BYxfVt81aduLmB2Tq54j5iWT+VKVpDmfm0w8Og2R?=
 =?us-ascii?Q?SH4SntyM6na/XSMZ2UIaDSK8fMsM/zyeNHHXjZaCD/qcpFuo1sijfmv/Eycq?=
 =?us-ascii?Q?LkqXbCmSKL5mV5bIacxf7Gpfd0K/n73yygTbu5Y2rZuiDlPJ/g8dN7ivS1es?=
 =?us-ascii?Q?3Q=3D=3D?=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL0PR11MB3122.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bcc7d6f0-28d4-4709-4590-08dbf55992b9
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Dec 2023 06:15:26.5233 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Edr7LVzQFGXvOTXYzMaZihLaa/NWMU/IBmhUNjM4QWl+TTZzv6gSktWwFZnSAu31lE8itm4EZboSGzYTZ8j8EvAIe+ye3ZQ+Sq5UyqpTIIJ1Lo0YYLXR0vTWJ3E6vVS4
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB8112
X-OriginatorOrg: intel.com
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1701757359; x=1733293359;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qmjg+1VRxdd8+eobKcgbvxIkMq/MXe/qYFOAd3WNrbM=;
 b=gGx0+Lc1NCHRafbbIs1FS2iHMc7wB/DBRuEn4UkDJ5W7tAwyDykJaCEZ
 bW+ARmwueg5cn47qgiup9i/4F0r6q53rW1vzxTR3Ya9YP/z3GwrEWxWs5
 /1qTAfKl2qMDvrXZSk2gK2qwWzV2T1BKWyLY38Ai2+vCkS31iogU5Si0W
 tXnKt2gmQYfHs7t0Y8b2W9yg01PtdWq7IHFYCNsmcB5fVj9TFlfXrZVmc
 8+xV5iCxssIKpDLLaHNIw2Pi7v50IpkVD8z6xWXUjRv49KBDnaj+1DDu5
 rRpvBPgh6KUKcVso0CUprUklitZoCndBcmuNahYFSeP+OnsE78CMWhzXe
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gGx0+Lc1
X-Mailman-Original-Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Subject: Re: [Intel-wired-lan] [PATCH iwl-next v1 03/13] intel: legacy:
 field prep conversion
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
Cc: Julia Lawall <Julia.Lawall@inria.fr>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>, "Brandeburg,
 Jesse" <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

> -----Original Message-----
> From: Intel-wired-lan <intel-wired-lan-bounces@osuosl.org> On Behalf Of Jesse Brandeburg
> Sent: Wednesday, November 22, 2023 2:49 AM
> To: intel-wired-lan@lists.osuosl.org
> Cc: Julia Lawall <Julia.Lawall@inria.fr>; netdev@vger.kernel.org; Marcin Szycik <marcin.szycik@linux.intel.com>; Brandeburg, Jesse <jesse.brandeburg@intel.com>
> Subject: [Intel-wired-lan] [PATCH iwl-next v1 03/13] intel: legacy: field prep conversion
>
> Refactor several older Intel drivers to use FIELD_PREP(), which reduces
> lines of code and adds clarity of intent.
>
> This code was generated by the following coccinelle/spatch script and
> then manually repaired.
>
> @prep@
> constant shift,mask;
> type T;
> expression a;
> @@
> -(((T)(a) << shift) & mask)
> +FIELD_PREP(mask, a)
>
> Cc: Julia Lawall <Julia.Lawall@inria.fr>
> Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
> Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
> ---
>  drivers/net/ethernet/intel/e1000e/80003es2lan.c | 7 +++----
>  drivers/net/ethernet/intel/e1000e/phy.c         | 7 +++----
>  drivers/net/ethernet/intel/fm10k/fm10k_pf.c     | 3 +--
>  drivers/net/ethernet/intel/igb/e1000_phy.c      | 4 ++--
>  drivers/net/ethernet/intel/igb/igb_ethtool.c    | 3 +--
>  drivers/net/ethernet/intel/igb/igb_main.c       | 9 +++------
>  drivers/net/ethernet/intel/ixgbe/ixgbe_82598.c  | 2 +-
>  drivers/net/ethernet/intel/ixgbe/ixgbe_fcoe.c   | 4 ++--
>  8 files changed, 16 insertions(+), 23 deletions(-)
>

Tested-by: Pucha Himasekhar Reddy <himasekharx.reddy.pucha@intel.com> (A Contingent worker at Intel)

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
