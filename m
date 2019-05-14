Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 08BFD1CE54
	for <lists+intel-wired-lan@lfdr.de>; Tue, 14 May 2019 19:52:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id B260186B9E;
	Tue, 14 May 2019 17:52:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zhuXLKQGdfW0; Tue, 14 May 2019 17:52:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8CA3E86BBD;
	Tue, 14 May 2019 17:52:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BAC771BF5F5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:52:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id B515287C3F
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:52:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id e+DhyqD4oT5V for <intel-wired-lan@lists.osuosl.org>;
 Tue, 14 May 2019 17:52:16 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by hemlock.osuosl.org (Postfix) with ESMTPS id C5FA8870AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 14 May 2019 17:52:16 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 10:52:16 -0700
X-ExtLoop1: 1
Received: from orsmsx101.amr.corp.intel.com ([10.22.225.128])
 by fmsmga005.fm.intel.com with ESMTP; 14 May 2019 10:52:13 -0700
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
 ORSMSX101.amr.corp.intel.com (10.22.225.128) with Microsoft SMTP Server (TLS)
 id 14.3.408.0; Tue, 14 May 2019 10:52:15 -0700
Received: from orsmsx121.amr.corp.intel.com ([169.254.10.47]) by
 ORSMSX158.amr.corp.intel.com ([169.254.10.135]) with mapi id 14.03.0415.000;
 Tue, 14 May 2019 10:52:15 -0700
From: "Greenwalt, Paul" <paul.greenwalt@intel.com>
To: "Michael, Alice" <alice.michael@intel.com>,
 "intel-wired-lan@lists.osuosl.org" <intel-wired-lan@lists.osuosl.org>
Thread-Topic: [next PATCH S5 iavf 10/11] iavf: add call to
 iavf_[add|del]_cloud_filter
Thread-Index: AQHVCnu4m82lCalC8U+n8QSw2YoRxaZq5oDQ
Date: Tue, 14 May 2019 17:52:14 +0000
Message-ID: <9A83C569D64F2541B0B591F2CBA3CC01E9666F53@ORSMSX121.amr.corp.intel.com>
References: <20190514173709.62431-1-alice.michael@intel.com>
 <20190514173709.62431-10-alice.michael@intel.com>
In-Reply-To: <20190514173709.62431-10-alice.michael@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-titus-metadata-40: eyJDYXRlZ29yeUxhYmVscyI6IiIsIk1ldGFkYXRhIjp7Im5zIjoiaHR0cDpcL1wvd3d3LnRpdHVzLmNvbVwvbnNcL0ludGVsMyIsImlkIjoiZTI1N2EzYjYtZGUyNi00ZTM3LThhNDEtMzQwZGEzYmI5ZDNlIiwicHJvcHMiOlt7Im4iOiJDVFBDbGFzc2lmaWNhdGlvbiIsInZhbHMiOlt7InZhbHVlIjoiQ1RQX05UIn1dfV19LCJTdWJqZWN0TGFiZWxzIjpbXSwiVE1DVmVyc2lvbiI6IjE3LjEwLjE4MDQuNDkiLCJUcnVzdGVkTGFiZWxIYXNoIjoiNzZtMHNaY1lXQ2VmSzVIUzNEWUVCUHBmNVZuZXZJWXJDZjJUWUU1THdcLzlldDNTZkJDQjhLa25sWjh6bEl0ME4ifQ==
x-ctpclassification: CTP_NT
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.0.600.7
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Subject: Re: [Intel-wired-lan] [next PATCH S5 iavf 10/11] iavf: add call to
 iavf_[add|del]_cloud_filter
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

ACK

Thanks,
Paul

-----Original Message-----
From: Michael, Alice 
Sent: Tuesday, May 14, 2019 10:37 AM
To: Michael, Alice <alice.michael@intel.com>; intel-wired-lan@lists.osuosl.org
Cc: Greenwalt, Paul <paul.greenwalt@intel.com>
Subject: [next PATCH S5 iavf 10/11] iavf: add call to iavf_[add|del]_cloud_filter

From: Paul Greenwalt <paul.greenwalt@intel.com>

Add call to iavf_add_cloud_filter and iavf_del_cloud_filter from iavf_process_aq_command to clear aq_required IAVF_FLAG_AQ_ADD_CLOUD_FILTER and IAVF_FLAG_AQ_DEL_CLOUD_FILTER bits.

aq_required IAVF_FLAG_AQ_DEL_CLOUD_FILTER bit is being set in iavf_down and iavf_delete_clsflower, and are never cleared.

aq_required IAVF_FLAG_AQ_ADD_CLOUD_FILTER bit is being set in iavf_handle_reset and iavf_configure_clsflower, and are never cleared.

Since the aq_required is not zero, iavf_watchdog_task is setting the queue_delayed_work to 20 msec instead of the longer delay.

Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/iavf/iavf_main.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/iavf/iavf_main.c b/drivers/net/ethernet/intel/iavf/iavf_main.c
index 8763486ff2b2..a833219c62d0 100644
--- a/drivers/net/ethernet/intel/iavf/iavf_main.c
+++ b/drivers/net/ethernet/intel/iavf/iavf_main.c
@@ -1658,7 +1658,14 @@ static int iavf_process_aq_command(struct iavf_adapter *adapter)
 		iavf_del_cloud_filter(adapter);
 		return 0;
 	}
-
+	if (adapter->aq_required & IAVF_FLAG_AQ_DEL_CLOUD_FILTER) {
+		iavf_del_cloud_filter(adapter);
+		return 0;
+	}
+	if (adapter->aq_required & IAVF_FLAG_AQ_ADD_CLOUD_FILTER) {
+		iavf_add_cloud_filter(adapter);
+		return 0;
+	}
 	return -EAGAIN;
 }
 
--
2.19.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
