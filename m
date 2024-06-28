Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23E691C215
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2024 17:07:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 56E24400BA;
	Fri, 28 Jun 2024 15:07:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RkUOg3PI_CDY; Fri, 28 Jun 2024 15:07:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org EA914408C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719587262;
	bh=oMzi+1SIomZwKqQgxsIcnviMZCw197taWixQyzR6b9I=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=cA9OvyD7NqrwBnDVrCXHxQTXb7edZ/UHm7Pvn2DJt+0vqE8Mm68W/kijpKt5RdJfF
	 hLf1T3zO6Zm8BvAd5balbY4CjRUcEUCIo6W5CB8knhN0lwDY7bcxXlPPOX7vN3c92g
	 ouatdHjJ5YxepCgwweIvXZkiEfPgDNLswi7NTok2eW0XqHbnbxyDF6U3q+HauIBDTo
	 LO9UtLyzymut+1EocvCVFQVO2GuKkOEcRuCJuIcMfm1PsIUpgN69ZDD1ZPG6c79v3H
	 ru0OC26jYlK8MkOWYiKCjIO2v21i4Cf4un5+VhymUWgrqPMM0pw/tAo5X7i3OY8wJ+
	 9VwqLUXd2fLuw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id EA914408C4;
	Fri, 28 Jun 2024 15:07:41 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 0477D1BF3BE
 for <intel-wired-lan@osuosl.org>; Fri, 28 Jun 2024 08:01:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id F21D7607E1
 for <intel-wired-lan@osuosl.org>; Fri, 28 Jun 2024 08:01:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZFUgtuXTydqm for <intel-wired-lan@osuosl.org>;
 Fri, 28 Jun 2024 08:01:12 +0000 (UTC)
X-Greylist: delayed 462 seconds by postgrey-1.37 at util1.osuosl.org;
 Fri, 28 Jun 2024 08:01:11 UTC
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org D8202607CF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D8202607CF
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=212.227.17.12;
 helo=mout.web.de; envelope-from=dmummenschanz@web.de; receiver=<UNKNOWN> 
Received: from mout.web.de (mout.web.de [212.227.17.12])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D8202607CF
 for <intel-wired-lan@osuosl.org>; Fri, 28 Jun 2024 08:01:11 +0000 (UTC)
X-UI-Sender-Class: 814a7b36-bfc1-4dae-8640-3722d8ec6cd6
Received: from [91.214.65.4] ([91.214.65.4]) by web-mail.web.de
 (3c-app-webde-bap22.server.lan [172.19.172.22]) (via HTTP); Fri, 28 Jun
 2024 09:48:12 +0200
MIME-Version: 1.0
Message-ID: <trinity-f4330eb0-c918-4848-a40f-d178a85bd69f-1719560892752@3c-app-webde-bap22>
From: Dieter Mummenschanz <dmummenschanz@web.de>
To: "Lifshits, Vitaly" <vitaly.lifshits@intel.com>
Content-Type: text/html; charset=UTF-8
Date: Fri, 28 Jun 2024 09:48:12 +0200
Importance: normal
Sensitivity: Normal
In-Reply-To: <1389af76-f0f9-4ac2-9a42-450c3ae99cdc@intel.com>
References: <20240620063645.4151337-1-vitaly.lifshits@intel.com>
 <6be9d31678aa4d8bbe9e1ddb75a2791f@intel.com>
 <1389af76-f0f9-4ac2-9a42-450c3ae99cdc@intel.com>
X-UI-Message-Type: mail
X-Priority: 3
X-Provags-ID: V03:K1:Bs2Z0faiicWvrS7JLtRtuWtdL97PtI9K35+KqCIHtAGacCKLv4di8TACV1voYkueMunvO
 Mbd39UN7bxqtcbqKgRpHiENNlly1cKTS1MQ4UtYX+7PPueNF3f+ySa6rsf5nXQF6C3CeXmgn5DG5
 El664gj2GJ4DcWuZ4RaNA5xi+pv1yxDatt+yrWpHxaZCWxUINGydf+7sn5J8hyTfpBkIe6RZ59B+
 WBbOeyr0rJmSF26CqL/onoUJ6lH8Kme3ri4PYhcpdRhChr1FhHCbzodb1FRZAW4vly+mPXafcynR
 Bo=
UI-OutboundReport: notjunk:1;M01:P0:pnp6JRsVjzM=;OH7qkhgG1wVppgz35CrM8IoXijg
 PNLf2XbejFRNWmWMeiqkaoriZ3Gy6bj/iZKYnYNxWLEaOZ4stZv9PTj0xa3NafpabI/4E28vA
 pi5O7cCCSNEGR5HMloJoXNUU2wa0c+kQyFwUE5c0RRQGMtb+seGQjyIVxYHdFOwgg2cWuT+jE
 wlHARRW27mZ/oxhG9EXF7bDFIOgmWhLoD/szzDGM6iqcp4SDj3azHjRm2xkzjuHACzPZUW6lf
 fNVdZ3HwiXDB2XqkmvuLt5IpbDoDh9IcwmsBAMzVn7hWRVjzi74JqM6oLmpxkRMhIc9W8Vv0A
 rmgNdtS21nWfyUY+NOy+VhQH2WIBiq6eOoyKD1FGLofgk/4Sb1xOB5loUhuM6t+HsH46vM2eo
 /pOt1211c+a6l0R3fmsUrAJPa1vtmIX3hbfh/NdgOck1qnwI7KQrnF4pLGbQ4kVAERmGx3+wW
 e7LbpEJIAoPHV08CaHeW1IJLl/y6VT3+mj+DagkShZh7Idgi7Z4DDwVPSGoqiQH8bGrUQ9hD4
 ZqfL+6EFfrdjTsRMPtSw+88GT9DfJaxw0LXPvQrqX5B4+Zddm4Su7QO4FIE5tJ3e5SfgT7B5w
 SXqUYQbUkGwkmcluDj7AYWg2wfqfjUH1mODwR1AB6tcKt+Ap03TljhCRy/5Cio/aAUECAdlT/
 RR2sfeynjPhMfk2N3363ReM2n0oBK6Z1xrySYMI7YaQY+0FXMclfJLUB0Lb2/Xo=
X-Mailman-Approved-At: Fri, 28 Jun 2024 15:07:39 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=web.de; 
 s=s29768273; t=1719561669; x=1720166469; i=dmummenschanz@web.de;
 bh=oMzi+1SIomZwKqQgxsIcnviMZCw197taWixQyzR6b9I=;
 h=X-UI-Sender-Class:MIME-Version:Message-ID:From:To:Cc:Subject:
 Content-Type:Date:In-Reply-To:References:cc:
 content-transfer-encoding:content-type:date:from:message-id:
 mime-version:reply-to:subject:to;
 b=W7beM/sQLtO9BEdQGaqlrA0AH9Y5vmCGrGpdEXRJGZEVIk2tpUT0++5jt5ZJCnh/
 IQLi0q9Kg1AE7wIwx9ME5ZKkdnz+8+kCPOtVrCajLPwjEhj2UqfVDtp8h7y7WFM+Z
 ohGsqb9tYR6NuHYndJ2uDdZckpIi7UnaVqkHzWSXUuEeGBXXImt8BQEgrQW2YYdo9
 dODIccRwxNMUhS6RoIHmpoM/O9qpyTUx74o8I6fUhmgbdq38n5wOEnf7Be3vHbW5g
 uDdP4k2RMJkFeRi9SN9zwTvcBiNserz7y7J2E3qB+IVW45ERIr2QxpJwOkp53BUgk
 1WJ/8adVM8vSrfqiDQ==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=quarantine dis=none)
 header.from=web.de
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=web.de header.i=dmummenschanz@web.de header.a=rsa-sha256
 header.s=s29768273 header.b=W7beM/sQ
Subject: Re: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: fix force
 smbus during suspend flow
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
Cc: "hui.wang@canonical.com" <hui.wang@canonical.com>, "Brandt,
 Todd E" <todd.e.brandt@intel.com>,
 "intel-wired-lan@osuosl.org" <intel-wired-lan@osuosl.org>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi,</div>

<div>&nbsp;</div>

<div>any chance we can upstream the patch before 6.10 goes final? At least it would fix suspend on older devices (I219-V [8086:15bc] (rev 10)).&nbsp;</div>

<div>&nbsp;</div>

<div>Kind Regards,</div>

<div>Dieter</div>

<div>&nbsp;
<div>&nbsp;
<div data-darkreader-inline-border-left="" name="quote" style="margin: 10px 5px 5px 10px; padding: 10px 0px 10px 10px; border-left: 2px solid rgb(195, 217, 229); overflow-wrap: break-word; -webkit-line-break: after-white-space; --darkreader-inline-border-left: #274759;">
<div style="margin:0 0 10px 0;"><b>Gesendet:</b>&nbsp;Sonntag, 23. Juni 2024 um 09:40 Uhr<br/>
<b>Von:</b>&nbsp;&quot;Lifshits, Vitaly&quot; &lt;vitaly.lifshits@intel.com&gt;<br/>
<b>An:</b>&nbsp;&quot;Brandt, Todd E&quot; &lt;todd.e.brandt@intel.com&gt;, &quot;intel-wired-lan@osuosl.org&quot; &lt;intel-wired-lan@osuosl.org&gt;<br/>
<b>Cc:</b>&nbsp;&quot;hui.wang@canonical.com&quot; &lt;hui.wang@canonical.com&gt;, &quot;Dieter Mummenschanz&quot; &lt;dmummenschanz@web.de&gt;<br/>
<b>Betreff:</b>&nbsp;Re: [PATCH iwl-net v2 1/1] e1000e: fix force smbus during suspend flow</div>

<div name="quoted-content"><br/>
<br/>
On 6/21/2024 10:55 AM, Brandt, Todd E wrote:<br/>
&gt; I just built and tested your patch on the latest 6.10.0-rc3 tip. It seems to have fixed the issue on three of our machines, but the issue still occurs on our Meteor Lake SDV board (otcpl-mtl-s).<br/>
&gt;<br/>
&gt; [ 130.302511] e1000e: EEE TX LPI TIMER: 00000011<br/>
&gt; [ 130.390014] e1000e 0000:80:1f.6: PM: pci_pm_suspend(): e1000e_pm_suspend [e1000e] returns -2<br/>
&gt; [ 130.390033] e1000e 0000:80:1f.6: PM: dpm_run_callback(): pci_pm_suspend returns -2<br/>
&gt; [ 130.390039] e1000e 0000:80:1f.6: PM: failed to suspend async: error -2<br/>
&gt; [ 130.574807] PM: suspend of devices aborted after 293.955 msecs<br/>
&gt; [ 130.574817] PM: start suspend of devices aborted after 376.596 msecs<br/>
&gt; [ 130.574820] PM: Some devices failed to suspend, or early wake event detected<br/>
&gt;<br/>
&gt; &#36;&gt; lspci -nn -s 80:1f.6<br/>
&gt; 80:1f.6 Ethernet controller [0200]: Intel Corporation Device [8086:550d]<br/>
<br/>
I see that the bus of your device is 80 and not 0 as usual, do you use<br/>
virtualization features? If so, can you please disable them and retest?<br/>
<br/>
&gt;<br/>
&gt; -----Original Message-----<br/>
&gt; From: Lifshits, Vitaly &lt;vitaly.lifshits@intel.com&gt;<br/>
&gt; Sent: Wednesday, June 19, 2024 11:37 PM<br/>
&gt; To: intel-wired-lan@osuosl.org<br/>
&gt; Cc: hui.wang@canonical.com; Lifshits, Vitaly &lt;vitaly.lifshits@intel.com&gt;; Brandt, Todd E &lt;todd.e.brandt@intel.com&gt;; Dieter Mummenschanz &lt;dmummenschanz@web.de&gt;<br/>
&gt; Subject: [PATCH iwl-net v2 1/1] e1000e: fix force smbus during suspend flow<br/>
&gt;<br/>
&gt; Commit 861e8086029e (&quot;e1000e: move force SMBUS from enable ulp function to avoid PHY loss issue&quot;) resolved a PHY access loss during suspend on Meteor Lake consumer platforms, but it affected corporate systems incorrectly.<br/>
&gt;<br/>
&gt; A better fix, working for both consumer and corporate systems, was proposed in commit bfd546a552e1 (&quot;e1000e: move force SMBUS near the end of enable_ulp function&quot;). However, it introduced a regression on older devices, such as [8086:15B8], [8086:15F9], [8086:15BE].<br/>
&gt;<br/>
&gt; This patch aims to fix the secondary regression, by limiting the scope of the changes to Meteor Lake platforms only.<br/>
&gt;<br/>
&gt; Fixes: bfd546a552e1 (&quot;e1000e: move force SMBUS near the end of enable_ulp function&quot;)<br/>
&gt; Reported-by: Todd Brandt &lt;todd.e.brandt@intel.com&gt;<br/>
&gt; Closes: <a href="https://bugzilla.kernel.org/show_bug.cgi?id=218940" target="_blank">https://bugzilla.kernel.org/show_bug.cgi?id=218940</a><br/>
&gt; Reported-by: Dieter Mummenschanz &lt;dmummenschanz@web.de&gt;<br/>
&gt; Closes: <a href="https://bugzilla.kernel.org/show_bug.cgi?id=218936" target="_blank">https://bugzilla.kernel.org/show_bug.cgi?id=218936</a><br/>
&gt; Signed-off-by: Vitaly Lifshits &lt;vitaly.lifshits@intel.com&gt;<br/>
&gt; --<br/>
&gt; v2: enhance the function description and address community comments<br/>
&gt; v1: initial version<br/>
&gt; ---<br/>
&gt; drivers/net/ethernet/intel/e1000e/ich8lan.c &#124; 73 +++++++++++++++------<br/>
&gt; 1 file changed, 53 insertions(+), 20 deletions(-)<br/>
&gt;<br/>
&gt; diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c<br/>
&gt; index 2e98a2a0bead..86d4ae95b45a 100644<br/>
&gt; --- a/drivers/net/ethernet/intel/e1000e/ich8lan.c<br/>
&gt; +++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c<br/>
&gt; @@ -137,6 +137,7 @@ static void e1000_gate_hw_phy_config_ich8lan(struct e1000_hw *hw, bool gate); static s32 e1000_disable_ulp_lpt_lp(struct e1000_hw *hw, bool force); static s32 e1000_setup_copper_link_pch_lpt(struct e1000_hw *hw); static s32 e1000_oem_bits_config_ich8lan(struct e1000_hw *hw, bool d0_state);<br/>
&gt; +static s32 e1000e_force_smbus(struct e1000_hw *hw);<br/>
&gt;<br/>
&gt; static inline u16 __er16flash(struct e1000_hw *hw, unsigned long reg) { @@ -1108,6 +1109,46 @@ static s32 e1000_platform_pm_pch_lpt(struct e1000_hw *hw, bool link)<br/>
&gt; return 0;<br/>
&gt; }<br/>
&gt;<br/>
&gt; +/**<br/>
&gt; + * e1000e_force_smbus - Force interfaces to transition to SMBUS mode.<br/>
&gt; + * @hw: pointer to the HW structure<br/>
&gt; + *<br/>
&gt; + * Force the MAC and the PHY to SMBUS mode. Assumes semaphore already<br/>
&gt; + * acquired.<br/>
&gt; + *<br/>
&gt; + * Return: 0 on success, negative errno on failure.<br/>
&gt; + **/<br/>
&gt; +static s32 e1000e_force_smbus(struct e1000_hw *hw) {<br/>
&gt; +u16 smb_ctrl = 0;<br/>
&gt; +u32 ctrl_ext;<br/>
&gt; +s32 ret_val;<br/>
&gt; +<br/>
&gt; +/* Switching PHY interface always returns MDI error<br/>
&gt; + * so disable retry mechanism to avoid wasting time<br/>
&gt; + */<br/>
&gt; +e1000e_disable_phy_retry(hw);<br/>
&gt; +<br/>
&gt; +/* Force SMBus mode in the PHY */<br/>
&gt; +ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &amp;smb_ctrl);<br/>
&gt; +if (ret_val) {<br/>
&gt; +e1000e_enable_phy_retry(hw);<br/>
&gt; +return ret_val;<br/>
&gt; +}<br/>
&gt; +<br/>
&gt; +smb_ctrl &#124;= CV_SMB_CTRL_FORCE_SMBUS;<br/>
&gt; +e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, smb_ctrl);<br/>
&gt; +<br/>
&gt; +e1000e_enable_phy_retry(hw);<br/>
&gt; +<br/>
&gt; +/* Force SMBus mode in the MAC */<br/>
&gt; +ctrl_ext = er32(CTRL_EXT);<br/>
&gt; +ctrl_ext &#124;= E1000_CTRL_EXT_FORCE_SMBUS;<br/>
&gt; +ew32(CTRL_EXT, ctrl_ext);<br/>
&gt; +<br/>
&gt; +return 0;<br/>
&gt; +}<br/>
&gt; +<br/>
&gt; /**<br/>
&gt; * e1000_enable_ulp_lpt_lp - configure Ultra Low Power mode for LynxPoint-LP<br/>
&gt; * @hw: pointer to the HW structure<br/>
&gt; @@ -1165,6 +1206,14 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)<br/>
&gt; if (ret_val)<br/>
&gt; goto out;<br/>
&gt;<br/>
&gt; +if (hw-&gt;mac.type != e1000_pch_mtp) {<br/>
&gt; +ret_val = e1000e_force_smbus(hw);<br/>
&gt; +if (ret_val) {<br/>
&gt; +e_dbg(&quot;Failed to force SMBUS: %d&#92;n&quot;, ret_val);<br/>
&gt; +goto release;<br/>
&gt; +}<br/>
&gt; +}<br/>
&gt; +<br/>
&gt; /* Si workaround for ULP entry flow on i127/rev6 h/w. Enable<br/>
&gt; * LPLU and disable Gig speed when entering ULP<br/>
&gt; */<br/>
&gt; @@ -1225,27 +1274,11 @@ s32 e1000_enable_ulp_lpt_lp(struct e1000_hw *hw, bool to_sx)<br/>
&gt; }<br/>
&gt;<br/>
&gt; release:<br/>
&gt; -/* Switching PHY interface always returns MDI error<br/>
&gt; - * so disable retry mechanism to avoid wasting time<br/>
&gt; - */<br/>
&gt; -e1000e_disable_phy_retry(hw);<br/>
&gt; -<br/>
&gt; -/* Force SMBus mode in PHY */<br/>
&gt; -ret_val = e1000_read_phy_reg_hv_locked(hw, CV_SMB_CTRL, &amp;phy_reg);<br/>
&gt; -if (ret_val) {<br/>
&gt; -e1000e_enable_phy_retry(hw);<br/>
&gt; -hw-&gt;phy.ops.release(hw);<br/>
&gt; -goto out;<br/>
&gt; +if (hw-&gt;mac.type == e1000_pch_mtp) {<br/>
&gt; +ret_val = e1000e_force_smbus(hw);<br/>
&gt; +if (ret_val)<br/>
&gt; +e_dbg(&quot;Failed to force SMBUS over MTL system: %d&#92;n&quot;, ret_val);<br/>
&gt; }<br/>
&gt; -phy_reg &#124;= CV_SMB_CTRL_FORCE_SMBUS;<br/>
&gt; -e1000_write_phy_reg_hv_locked(hw, CV_SMB_CTRL, phy_reg);<br/>
&gt; -<br/>
&gt; -e1000e_enable_phy_retry(hw);<br/>
&gt; -<br/>
&gt; -/* Force SMBus mode in MAC */<br/>
&gt; -mac_reg = er32(CTRL_EXT);<br/>
&gt; -mac_reg &#124;= E1000_CTRL_EXT_FORCE_SMBUS;<br/>
&gt; -ew32(CTRL_EXT, mac_reg);<br/>
&gt;<br/>
&gt; hw-&gt;phy.ops.release(hw);<br/>
&gt; out:<br/>
&gt; --<br/>
&gt; 2.34.1<br/>
&gt;</div>
</div>
</div>
</div></div></body></html>
